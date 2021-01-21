module SimpleCheckout
  describe '#INVENTORY' do
    let (:milk) { Item.new(name: 'milk', price: 50)}
    it 'returns the price of an item' do
      expect(INVENTORY[:milk]).to eq milk.price
    end
  end
end
