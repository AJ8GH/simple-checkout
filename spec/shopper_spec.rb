module SimpleCheckout
  describe Shopper do
    before (:each) { @shopper = Shopper.new }
    context '#intialize' do
      it 'initializes a new instance of shopper' do
        expect(@shopper.class).to eq Shopper
      end

      it 'initializes a new shopper with an empty basket' do
        expect(@shopper.basket.empty?).to be true
      end
    end

    context '#basket' do
      it 'returns the shoppers basket' do
        expect(@shopper.basket).to eq []
      end
    end

    context '#pick_item' do
      it 'adds an instance of the item to basket' do
        @shopper.pick_item('milk')
        expect(@shopper.basket.first.name).to eq 'milk'
      end

      it 'does nothing if item is not valid' do
        @shopper.pick_item('jam')
        expect(@shopper.basket.empty?).to be true
      end
    end
  end
end
