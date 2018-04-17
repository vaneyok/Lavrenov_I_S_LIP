class IntNum

	attr_accessor :inum

	def initialize(input_inum)
		@inum = input_inum.to_i
	end

	def show_num
		puts "Int number: #{@inum}"
	end

	def length_of_num
		puts "Number of numbers: #{@inum.to_s.chars.map(&:to_i).length}"
	end
end

class IntAndFloat < IntNum

	attr_accessor :fnum

	def initialize(input_inum, input_fnum)
		super(input_inum)
		@fnum = input_fnum.to_f
	end

	def show_num
		super
		puts "Float number: #{@fnum}"
	end
end
