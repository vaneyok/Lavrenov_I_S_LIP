class ArmstrongNumber < ApplicationRecord
	validates_uniqueness_of :input_value
end
