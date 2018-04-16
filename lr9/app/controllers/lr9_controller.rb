class Lr9Controller < ApplicationController
  def input
  end

  def output
  	word = params[:word]
    @numbers=Array.new
    count = 0
    if word.to_s.empty?
      @result = :blank #"Заполните пустое поле"
 	  elsif word.to_i == 0 
 	    @result = :nan #"Введите числовое значение"
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
 	  	  @result = @numbers.any? ? :ok : :not_found  #numbers : "Для чисел с #{number} цифрами нет чисел Армстронга"
 	    end
	  end
	  respond_to do |format| 
      format.html 
      format.json do  
        render json:  
          {type: @numbers.class.to_s, number: @number, message: @result, values: @numbers}  
      end 
    end 
  end
end
