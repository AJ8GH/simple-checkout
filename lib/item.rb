module SimpleCheckout
  class Item
    attr_reader :name, :price
    def initialize(args = {})
      @name = args.fetch(:name)
      @price = args.fetch(:price)
    end

    def show_price
      price.money_format
    end
  end
end
