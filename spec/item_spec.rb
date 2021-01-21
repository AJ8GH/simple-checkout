module SimpleCheckout
  describe Item do
    context '#intialize'
    it 'takes a hash as an argument' do
      expect{ Item.new{} }.to_not raise_error
    end

    
  end
end
