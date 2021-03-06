class CheckoutController < ApplicationController

	def make_order
		 render json: Descuentos::Order.scan(checkout_params[:item])
	end

	def total_order
		render json: Descuentos::Order.total
		
	end

	def remove
		render json: Descuentos::Order.remove
		
	end

	private
	def checkout_params
		params.require(:order).permit(:item)

	end
end
	


	