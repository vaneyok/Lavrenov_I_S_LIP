class OutputController < ApplicationController
	before_action :parse_params, only: :index

	def index
		word = params[:word]
		@numbers=Array.new
    	count = 0
    	if word.to_s.empty?
    	  	result = {message: :blank} #"Заполните пустое поле"
 		elsif word.to_i == 0 
 		    result = {message: :nan} #"Введите числовое значение"
 		else
 		    @number = word.to_i
 		    (10**(@number-1)..10**@number - 1).to_a.each do |ii|
 		  	  	wanted = ii
 		  	  	sum = 0
 		  	  	@number.times do
 	  			  	sum += (ii % 10)**@number
 	  			  	ii /= 10
 	  	  		end
 	  	  		if wanted == sum
 	  		  		@numbers[count] = sum
 	  		  		count += 1
 	  	  		end
 	  	  		i = 0
 	  	  		result = @numbers.any? ? @numbers.map{|elem| {num: i += 1, elem: elem}} : {message: :not_found}  #numbers : "Для чисел с #{number} цифрами нет чисел Армстронга"
 	    	end
	  	end

	  	respond_to do |format|
      		format.xml { render xml: result.to_xml }
      		format.rss { render xml: result.to_xml }
		end
	end

	protected

	def parse_params
		@number = params[:word].to_i
	end
end
