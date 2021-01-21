module SimpleCheckout
  class Item
    attr_reader :name
    def initialize(args = {})
      @name = args.fetch(:name)
    end
  end
end
