require 'rails_helper'

RSpec.describe CheckoutController, type: :request do
	 it "send valid information and response valid message" do
	 	@expected = {:message => "Valid code, added to order"}.to_json
    	headers = { "CONTENT_TYPE" => "application/json" }
    	post "/api/v1/add", :params => '{ "order": { "item":"TSHIRT" } }',:headers => headers
    	response.body.should == @expected
  end

 
end
RSpec.describe CheckoutController, type: :request do
	 it "send invalid information and response invalid message" do
	 	@expected = {:message => "Invalid code, can't add to order"}.to_json
    	headers = { "CONTENT_TYPE" => "application/json" }
    	post "/api/v1/add", :params => '{ "order": { "item":"TSHIRTt" } }',:headers => headers
    	response.body.should == @expected
  end

 end
 RSpec.describe CheckoutController, type: :request do
	 it "send valid information en response valid message " do
	 	@expected =  {:message => "Valid code, added to order"}.to_json
	
    	headers = { "CONTENT_TYPE" => "application/json" }
     	post "/api/v1/add", :params => '{ "order": { "item":"TSHIRT" } }',:headers => headers
    	response.body.should == @expected
  end
 end



 RSpec.describe CheckoutController, type: :request do
	 it "validate order 1 " do
	 	get "/api/v1/remove",:headers => headers
	 	@expected =  {:message => "Valid code, added to order"}.to_json
	 	@total = "81.0"
    	headers = { "CONTENT_TYPE" => "application/json" }
     	post "/api/v1/add", :params => '{ "order": { "item":"TSHIRT" } }',:headers => headers
     	post "/api/v1/add", :params => '{ "order": { "item":"TSHIRT" } }',:headers => headers
     	post "/api/v1/add", :params => '{ "order": { "item":"TSHIRT" } }',:headers => headers
       	post "/api/v1/add", :params => '{ "order": { "item":"TSHIRT" } }',:headers => headers
    	post "/api/v1/add", :params => '{ "order": { "item":"VOUCHER" } }',:headers => headers
    	get "/api/v1/total",:headers => headers
    	response.body.should == @total
  end
 end


 RSpec.describe CheckoutController, type: :request do
	 it "remove order and get 0" do
	 	@expected =  {:message => "Order removed"}.to_json
	 	@total = "0"
    	headers = { "CONTENT_TYPE" => "application/json" }
    	get "/api/v1/remove",:headers => headers
    	response.body.should == @expected
    	get "/api/v1/total",:headers => headers
    	response.body.should == @total
 
  end
 end

  RSpec.describe CheckoutController, type: :request do
	 it "validate order 2" do
	 	@expected =  {:message => "Valid code, added to order"}.to_json
	 	@total = "74.5"
    	headers = { "CONTENT_TYPE" => "application/json" }
     	post "/api/v1/add", :params => '{ "order": { "item":"TSHIRT" } }',:headers => headers
     	post "/api/v1/add", :params => '{ "order": { "item":"TSHIRT" } }',:headers => headers
       	post "/api/v1/add", :params => '{ "order": { "item":"TSHIRT" } }',:headers => headers
    	post "/api/v1/add", :params => '{ "order": { "item":"VOUCHER" } }',:headers => headers
    	post "/api/v1/add", :params => '{ "order": { "item":"VOUCHER" } }',:headers => headers
    	post "/api/v1/add", :params => '{ "order": { "item":"VOUCHER" } }',:headers => headers
    	post "/api/v1/add", :params => '{ "order": { "item":"MUG" } }',:headers => headers
    	get "/api/v1/total",:headers => headers
    	response.body.should == @total
  end
 end


