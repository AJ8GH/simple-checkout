module SimpleCheckout
  describe Shopper do
    context '#intialize' do
      it 'initializes a new instance of shopper' do
        expect(Shopper.new.class).to eq Shopper
      end

      it 'initializes a new shopper with an empty basket' do
        expect(Shopper.new.basket.empty?).to be true
      end
    end
  end
end
