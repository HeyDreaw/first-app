class PaymentsController < ApplicationController
	def create
    @product = params[:product_id]
    @user = current_user
    token = params[:stripeToken]
    begin
      charge = Stripe::Charge.create(
      :amount => @product.price,
      :currency => "usd",
      :source => token,
      :description => params[:stripeEmail]
      )
      if charge.paid
        Order.create(product_id: @product.id, user_id: @user, total: @product.price)
      end
    rescue Stripe::CardError => e
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
    end
    redirect_to product_path(@product)
  end
end
