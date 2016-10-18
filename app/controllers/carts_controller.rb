class CartsController < ApplicationController
  def show
    @current_cart = current_cart ||= Cart.find_by(id: params[:id])
  end

  def checkout
    if user_signed_in?
      @cart = Cart.find_by(id: params[:id])
      @cart.checkout
      current_user.current_cart = nil
      current_user.save
      redirect_to cart_path(@cart)
    else
      redirect_to new_user_session_path
    end
  end
end
