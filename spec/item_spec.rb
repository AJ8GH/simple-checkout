module SimpleCheckout
  describe Item do
    before (:all) { @item = Item.new(name: 'Eggs', price: 200 ) }

    context '#intialize' do
      it 'raises an exception if an empty hash is provided as an argument' do
        expect { Item.new{} }.to raise_error
      end

      it 'takes an argument of a hash with name and price' do
        expect { Item.new(name: 'Milk', price: 50) }.to_not raise_error
      end
    end

    context '#name' do
      it 'returns the items name' do
        expect(@item.name).to eq 'Eggs'
      end
    end

    context '#price' do
      it 'returns the price' do
        expect(@item.price).to eq 200
      end
    end
  end
end
