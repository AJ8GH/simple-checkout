module SimpleCheckout
  class Checkout
    attr_accessor :basket
    def initialize(basket)
      @basket = basket
    end

    def scan(item_name)
      item_index = basket.find_index { |item| item.name == item_name }
      price = basket[item_index].price
    end

    def remove_scanned_item(item_name)
      basket.delete_at(basket.find_index { |item| item.name == item_name })
    end
  end
end
