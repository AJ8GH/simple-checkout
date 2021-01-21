module SimpleCheckout
  describe Checkout do
    let(:milk) { Item.new(name: 'Milk', price: 50) }
    let(:bread) { Item.new(name: 'Bread', price: 100) }
    let(:steak) { Item.new(name: 'Steak', price: 1800) }

    context '#initialize' do
      it 'takes an argument' do
        expect { Checkout.new(Object.new) }.to_not raise_error
      end

      it 'raises an execption if no argument is given' do
        expect { Checkout.new }.to raise_exception
      end
    end

    context '#basket' do
      let (:test_basket) { [milk, bread, steak] }
      it 'returns the items in the basket' do
        checkout = Checkout.new(test_basket)
        expect(checkout.basket).to eq test_basket
      end
    end

    context '#scan' do
      let (:test_basket) { [milk, bread, steak] }
      it 'returns the price of the scanned items' do
        checkout = Checkout.new(test_basket)
        expect(checkout.scan(checkout.basket)).to eq [milk.price, bread.price, steak.price]
      end
    end
  end
end
