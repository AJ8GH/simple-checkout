module SimpleCheckout
  describe Checkout do
    let(:example_basket) do
      [{name: 'Milk', price: 50}, {name: 'Bread', price: 100}, {name: 'Steak', price: 18_000}]
    end

    context '#initialize' do
      it 'takes an argument' do
        expect { Checkout.new(Object.new) }.to_not raise_error
      end

      it 'raises an execption if no argument is given' do
        expect { Checkout.new }.to raise_exception
      end
    end

    context '#basket' do
      before(:each) { @checkout = Checkout.new(example_basket) }
      it 'returns the items in the basket' do
        expect(@checkout.basket).to eq example_basket
      end
    end
  end
end
