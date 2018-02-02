module Dates 
	#array of instances validations, can add more validations here
	VALIDATIONS = [Main::CsoValidator.new , Main::MarketingValidator.new ]
	#array of prices, can add more prices here
	PRICES = {"VOUCHER" => 5.00, "TSHIRT" => 20.00 , "MUG" => 7.50}
	#discount to apply on bulk purchases, can change if it is necesary
	DISCOUNT = {"TSHIRT" => 19.00}
	#min limit of purchase to change the price
	CFO_MIN_DISCOUNT = 3
	#2x1 target item discount, can change if the 2x1 promotion swicht to another product
	MARKETING_ITEM = "VOUCHER"
end