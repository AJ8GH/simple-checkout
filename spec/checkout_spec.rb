module SimpleCheckout
  describe Checkout do
    context '#initialize' do
      it 'takes an argument' do
        expect { Checkout.new(Object.new) }.to_not raise_error
      end
    end
  end
end
