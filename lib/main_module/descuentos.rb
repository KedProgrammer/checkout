module Descuentos
	class Order
		include Dates
		@items = []
		#initialice main class validator and its classes variables shared between validators classes
		@main = Main::Main.new(@items)
		def self.scan(item)
			#validate if the passing item is valid
			if !Dates::PRICES.keys.include?(item)
				return {:message => "Invalid code, can't add to order"}
			else
				@items << item
				@main.add(@items) 
				
				return {:message => "Valid code, added to order"}
			end
			
		end

		def self.total
			#each instance validator is called here
			VALIDATIONS.each do |validation|
			validation.validate
			end

			#return total order 
			return {:message => "Your total price is #{@main.total_order}"}
		end
		def self.remove
			@main.remove
			@items = []
			Dates::PRICES[Dates::DISCOUNT.keys[0]] = 20
			{:message => "Order removed"}
			

		end

	end
end








