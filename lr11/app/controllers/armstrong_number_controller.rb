require 'uri'

class ArmstrongNumberController < ApplicationController
	before_action :parse_params, only: :output

  	def input
  	end

  	def output
  		if res = ArmstrongNumber.find_by_input_value( @number )
			@result = ActiveSupport::JSON::decode( res.output_value )
		else
			find_arm_num
			if @result[0].to_i != 0 
				res = ArmstrongNumber.create :input_value => @number, :output_value => ActiveSupport::JSON::encode( @result )
				res.save
				@flag = true
			end
		end

		respond_to do |format| 
      		format.html 
      		format.json do  
        		render json:  
          			{input_value: @number, result: @result}  
      		end 
  		end

  	end

  	

  	def get_last
  		last = ArmstrongNumber.last
  		@number = ActiveSupport::JSON::decode( last.input_value )
  		@result = ActiveSupport::JSON::decode( last.output_value )
  		render json:  
          	{input: @number, result: @result}
  	end

  	def result_in_xml
    	@result = ArmstrongNumber.all	
		render xml:  
          	{input: @number, result: @result}

  	end

	protected

	def find_arm_num
    	@numbers=Array.new
    	count = 0
    	if @number.to_s.empty?
      		@result = :blank #"Заполните пустое поле"
 		elsif @number.to_i == 0 
 	    	@result = :nan #"Введите числовое значение"
 		else
 	    	num = @number.to_i
 	    	(10**(num-1)..10**num - 1).to_a.each do |ii|
 	  	  		wanted = ii
 	  	  		sum = 0
 	  	  		num.times do
 	  		  		sum += (ii % 10)**num
 	  		  		ii /= 10
 	  	  		end
 	  	  		if wanted == sum
 	  		  		@numbers[count] = sum
 	  		  		count += 1
 	  	  		end
 	  	  		#return @numbers.any? ? @numbers : :not_found  #numbers : "Для чисел с #{number} цифрами нет чисел Армстронга"
 	  	  		if @numbers.any?
 	  	  			@result = @numbers
 	  	  		else
 	  	  			@result = :not_found
 	  	  		end
 	    	end
	  	end


  	end

  	def parse_params
    	@number = params[:input_value]
  	end
end
