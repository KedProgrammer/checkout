class Api::V1::CheckoutController < ApplicationController


	def make_order
		 render json: Descuentos::Order.scan(checkout_params[:item]), :status => 200
	end

	def total_order
		render json: Descuentos::Order.total, :status => 200
		
	end

	def remove
		render json: Descuentos::Order.remove, :status => 200
		
	end

	private
	def checkout_params
		params.require(:order).permit(:item)

	end
end
	
