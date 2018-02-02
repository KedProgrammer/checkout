
module Main

	class Main
		# main class and classes variables
		include Dates
		attr_accessor :order , :promotion
		def initialize(order)
			@@order = order
			@@total = 0
			@@promotion = []
		end
		def total_order
			
			@@total =  @@promotion.reduce(0) {|memo, obj| memo + Dates::PRICES[obj]} 
			@@total
		end
		def remove
			@@order = []
			@@promotion = []
			
		end

		def add(items)
			@@order = items
			
		end


	end
	#cfo discount

	class CsoValidator  < Main 
		def initialize
			
		end
		def validate
			index_items = []
			@@promotion = []
			@@promotion = @@order.dup
		
			@@promotion.each_index {|index| index_items << index if @@promotion[index] == Dates::MARKETING_ITEM }
			if @@promotion.count(Dates::MARKETING_ITEM).even?
				(@@promotion.count(Dates::MARKETING_ITEM) / 2).times do |n|
					@@promotion.delete_at(index_items[n - 1])
				end
				
			else
				ciclo = (@@promotion.count(Dates::MARKETING_ITEM) -1 ) / 2
				ciclo.times do |n|
					
					@@promotion.delete_at(index_items[n - 1])
					
				end
				
			end
		
		end
	end


 # Marketing departament 2x1 promotion
	class MarketingValidator < Main
		def initialize
				
		end

		def validate
				# @@order.each {|value| @@order.count(key) >= Dates::CFO_MIN_DISCOUNT ? Dates::PRICES[key] = Dates::DISCOUNT[key] : Dates::PRICES[key] = value }
				@@order.count(Dates::DISCOUNT.keys[0]) >= Dates::CFO_MIN_DISCOUNT ?  Dates::PRICES[Dates::DISCOUNT.keys[0]] = Dates::DISCOUNT[Dates::DISCOUNT.keys[0]] : Dates::PRICES[Dates::DISCOUNT.keys[0]] = Dates::PRICES[Dates::DISCOUNT.keys[0]]
		end
	end


end


