require 'nokogiri'
require 'open-uri'

class Lr102Controller < ApplicationController
  before_action :parse_params, only: :output
  before_action :prepare_url, only: :output

  def input
  end

  def output
    output_response = open(@url)
    if @side == 'server'
      @result = xslt_transform(output_response).to_html
    # Если делать XML -> HTML в браузере.
    elsif @side == 'client-with-xslt'
      render xml: insert_browser_xslt(output_response).to_xml
    else
      render xml: output_response # в неизменном виде
    end
  end

  private

  BASE_OUTPUT_URL = 'http://localhost:3000/?format=xml'.freeze
  # Откуда берется XSLT для преобразования на стороне сервера
  XSLT_SERVER_TRANSFORM = "#{Rails.root}/public/server-transform.xslt".freeze
  # Откуда браузер должен брать XSLT
  XSLT_BROWSER_TRANSFORM = '/browser-transform.xslt'.freeze

  def parse_params
    @number = params[:word].to_i
    @side = params[:side]
  end

  # Создается url с использованием разобранных параметров запроса
  def prepare_url
    @url = BASE_OUTPUT_URL + "&word=#{@number}"
  end

  def xslt_transform(data, transform: XSLT_SERVER_TRANSFORM)
    doc = Nokogiri::XML(data)
    xslt = Nokogiri::XSLT(File.read(transform))
    xslt.transform(doc)
  end

  def insert_browser_xslt(data, transform: XSLT_BROWSER_TRANSFORM)
    doc = Nokogiri::XML(data)
    xslt = Nokogiri::XML::ProcessingInstruction.new(doc, 'xml-stylesheet', 'type="text/xsl" href="' + transform + '"')
    doc.root.add_previous_sibling(xslt)
    doc
  end
end
