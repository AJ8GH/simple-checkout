module SimpleCheckout
  class Shopper
    attr_accessor :basket
    def initialize(basket = [])
      @basket = basket
    end
  end
end
