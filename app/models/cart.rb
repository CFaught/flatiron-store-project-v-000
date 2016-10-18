class Cart < ActiveRecord::Base
  has_many :line_items
  has_many :items, through: :line_items
  belongs_to :user

  def total
    item_prices = line_items.collect { |line_item| line_item.item.price * line_item.quantity }
    item_prices.reduce(:+)
  end

  def add_item(item_id)
    line_item = LineItem.find_by(item_id: item_id, cart_id: self.id)

    if line_item
      line_item.quantity += 1
      line_item.save
      line_item
    else
      line_items.build(item_id: item_id)
    end

  end

  def checkout
    line_items.each do |line_item|
      line_item.item.inventory -= line_item.quantity
      line_item.item.save
    end
  end
end
