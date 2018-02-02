class CheckoutController < ApplicationController
  include Descuentos
	def make_order
		@order = params[:order]
		@descuentos = Descuentos::Order.new(@order)
		@descuentos.validate
	end

	private
	def checkout_params
		params.require(:order).permit(:items)

		
	end
end
	