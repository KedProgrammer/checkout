module Descuentos
	class Order
		include Dates
		@items = []
		@main = Main::Main.new(@items)

		def self.scan(item)
			
			@items << item
			@main.order = @items
		
			
		end

		def self.total
			VALIDATIONS.each do |validation|
			validation.validate
			end
			@main.total_order
		end

	end
end








