class BillingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @billing = Billing.new
    @billing.user_id = current_user.id
    @billing.product_id = params[:product_id]

    @product = Product.find(params[:product_id])
    quantity = @product.quantity.to_i
    quantity -=1
    @product.update(quantity: quantity)

    @billing.save
    redirect_to root_path, notice: 'Tu compra ha sido exitosa'
  end
end
