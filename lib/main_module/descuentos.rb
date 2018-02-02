module Descuentos
	class Order
		include Dates
		def initialize(order)
			@validator = Main::Main.new(order)
			
		end



		def validate
			@validator.say_hello
			@validator2 = Main::CsoValidator.new
			Dates::VALIDATIONS.each do |validation|
				validation.validation
			end
		end
	end
end








