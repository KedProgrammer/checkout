module Main

	class Main
		include Dates
		attr_accessor :order
		def initialize(order)
			@@order = order
			@@total = 0
		end
		def total_order
			@@total =  @@order.reduce(0) {|memo, obj| memo + Dates::PRICES[obj]}
			@@total
		end


	end


	class CsoValidator  < Main 
		def initialize
			
		end
		def validate
			index_items = []
			@@order.each_index {|index| index_items << index if @@order[index] == Dates::MARKETING_ITEM }
			if @@order.count(Dates::MARKETING_ITEM).even?
				(@@order.count(Dates::MARKETING_ITEM) / 2).times do |n|
					@@order.delete_at(index_items[n - 1])
				end
			else
				((@@order.count(Dates::MARKETING_ITEM) -1 ) / 2).times do |n|
					@@order.delete_at(index_items[n - 1])
				end
			end
			
		end
	end



	class MarketingValidator < Main
		def initialize
				
		end

		def validate
				Dates::PRICES.each {|key,value| @@order.count(key) >= Dates::CFO_MIN_DISCOUNT ? Dates::PRICES[key] = Dates::DISCOUNT[key] : Dates::PRICES[key] = value }
		end
	end


end



