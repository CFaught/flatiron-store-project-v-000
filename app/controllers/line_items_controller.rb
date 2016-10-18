class LineItemsController < ApplicationController
  def create
    if !current_user.current_cart
      current_user.current_cart = current_user.carts.create
      cart = current_user.current_cart
      current_user.save
    else
      cart = current_user.current_cart
    end
    cart.add_item(params[:item_id])
    cart.save
    redirect_to cart_path(cart)
  end
end
