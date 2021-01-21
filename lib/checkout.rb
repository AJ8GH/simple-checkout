module SimpleCheckout
  class Checkout
    attr_accessor :basket, :total
    def initialize(basket, total = 0)
      @basket = basket
      @total = total
    end

    def scan(item_name)
      item_index = find_item_index(item_name)
      price = basket[item_index].price
      @total += price
      price
    end

    def remove_scanned_item(item_name)
      item_index = find_item_index(item_name)
      basket.delete_at(item_index)
    end

    def find_item_index(item_name)
      basket.find_index { |item| item.name == item_name }
    end
  end
end
