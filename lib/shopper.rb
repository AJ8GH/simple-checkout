module SimpleCheckout
  class Shopper
    attr_accessor :basket
    def initialize(basket = [])
      @basket = basket
    end

    def pick_item(item_name)
      item = item_name.split.join('_').to_sym
      price = INVENTORY[item]
      basket << Item.new(name: item_name, price: price) if price
    end
  end
end
