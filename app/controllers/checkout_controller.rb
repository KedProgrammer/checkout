class CheckoutController < ApplicationController

	def make_order
		 Descuentos::Order.scan(checkout_params[:item])
	end

	def total_order
		render json: Descuentos::Order.total
		
	end

	private
	def checkout_params
		params.require(:order).permit(:item)

	end
end
	


	