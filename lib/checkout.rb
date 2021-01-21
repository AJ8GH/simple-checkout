module SimpleCheckout
  class Checkout
    attr_accessor :basket
    def initialize(basket)
      @basket = basket
    end

    def scan(basket)
      basket.map(&:price)
    end
  end
end
