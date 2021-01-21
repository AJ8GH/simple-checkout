module SimpleCheckout
  describe Checkout do
    let(:milk) { Item.new(name: 'milk', price: 50) }
    let(:more_milk) {Item.new(name: 'milk', price: 50)}
    let(:bread) { Item.new(name: 'bread', price: 100) }
    let(:steak) { Item.new(name: 'steak', price: 1800) }
    let(:cheese) { Item.new(name: 'cheese', price: 350) }
    let(:ice_cream) { Item.new(name: 'ice cream', price: 400) }

    context '#initialize' do
      it 'takes an argument' do
        expect { Checkout.new(Object.new) }.to_not raise_error
      end

      it 'raises an execption if no argument is given' do
        expect { Checkout.new }.to raise_error(ArgumentError)
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

      it 'increments the total price with the price of each scanned item' do
        checkout = Checkout.new(test_basket)
        checkout.scan('milk')
        expect(checkout.total).to eq milk.price

        checkout.scan('bread')
        expect(checkout.total).to eq [milk, bread].map(&:price).sum

        checkout.scan('steak')
        expect(checkout.total).to eq [milk, bread, steak].map(&:price).sum
      end
    end

    context '#remove_scanned_item' do
      let (:test_basket) { [milk, bread, steak] }
      let (:multiples_basket) { [milk, cheese, more_milk, ice_cream]}

      it 'removes the scanned item from the basket' do
        checkout = Checkout.new(test_basket)
        checkout.remove_scanned_item('milk')
        expect(checkout.basket.include?(milk)).to be false
      end

      it 'only removes the first item, if there are multiples in the basket with the same name' do
        checkout = Checkout.new(multiples_basket)
        checkout.remove_scanned_item('milk')
        expect(checkout.basket.include?(more_milk)).to be true
      end
    end

    context '#find_item_index' do
      let (:multiples_basket) { [milk, cheese, more_milk, ice_cream]}
      it 'returns the index of the first item in the basket with the specified name' do
        checkout = Checkout.new(multiples_basket)
        expect(checkout.find_item_index('milk')).to eq 0
      end
    end

    context '#total' do
      let (:test_basket) { [milk, bread, steak] }
      it 'returns the total price of all scanned items' do
        checkout = Checkout.new(test_basket)
        checkout.basket.map(&:name).each { |item| checkout.scan(item) }
        expect(checkout.total).to eq checkout.basket.map(&:price).sum
      end
    end
  end
end
