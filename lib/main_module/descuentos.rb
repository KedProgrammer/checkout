module Descuentos
	class Order
		include Dates
		@items = []
		@main = Main::Main.new(@items)
		def self.scan(item)
			if !Dates::PRICES.keys.include?(item)
				return {:message => "Invalid code, can't add to order"}
			else
				@items << item
				@main.order = @items
				return {:message => "Valid code, add to order"}
			end
			
		end

		def self.total
			VALIDATIONS.each do |validation|
			validation.validate
			end
			@main.total_order
		end

	end
end








