module Dates 
	VALIDATIONS = [Main::CsoValidator.new , Main::MarketingValidator.new ]
	PRICES = {"VOUCHER" => 5.00, "TSHIRT" => 20.00 , "MUG" => 7.50}
	DISCOUNT = {"TSHIRT" => 19.00}
end