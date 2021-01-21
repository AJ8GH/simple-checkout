module SimpleCheckout
  describe Item do
    context '#intialize'
    it 'takes an empty hash as an argument' do
      expect { Item.new{} }.to_not raise_error
    end

    it 'takes an argument of a hash with name and price' do
      expect { Item.new(name: 'Milk', price: 50) }.to_not raise_error
    end
  end
end
