module SimpleCheckout
  class Checkout
    attr_accessor :basket
    def initialize(basket)
      @basket = basket
    end
  end
end
