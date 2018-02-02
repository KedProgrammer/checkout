module Main

	class Main
		include Dates
		attr_accessor :order
		def initialize(order)
			@@order = order
			@@total = 0
		end
		def total_order
			@@total
		end


	end

	class CsoValidator  < Main 
		def initialize
			
		end
		def validate
			
			
		end
	end

	class MarketingValidator < Main
		def initialize
				
		end

		def validate
				Dates::PRICES.each {|key,value| @@order.count(key) >= 3 ? Dates::PRICES[key] = Dates::DISCOUNT[key] : Dates::PRICES[key] = value }
				@@total =  @@order.reduce(0) {|memo, obj| memo + Dates::PRICES[obj]}
		end
	end


end



