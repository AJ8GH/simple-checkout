module SimpleCheckout
  describe Shopper do
    context '#intialize' do
      it 'initializes a new instance of shopper' do
        expect(Shopper.new.class).to eq Shopper
      end
    end
  end
end
