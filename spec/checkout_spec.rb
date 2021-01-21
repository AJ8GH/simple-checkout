module SimpleCheckout
  describe Checkout do
    let(:milk) { Item.new(name: 'milk', price: 50) }
    let(:bread) { Item.new(name: 'bread', price: 100) }
    let(:steak) { Item.new(name: 'steak', price: 1800) }

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
      it 'returns the price of the scanned item' do
        checkout = Checkout.new(test_basket)
        expect(checkout.scan('milk')).to eq milk.price
      end
    end

    context '#remove_scanned_item' do
      it 'removes the scanned item from the basket' do

      end
    end
  end
end
