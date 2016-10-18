class StoreController < ApplicationController
  def index
    @categories = Category.all
    @items = Item.available_items
    if user_signed_in? && current_user.current_cart
      @cart = current_user.current_cart
    end
  end
end
