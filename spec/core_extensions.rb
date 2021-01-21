describe Integer do
  context '#money_format' do
    it 'converts 2 to £2.00' do
      expect(2.money_format).to eq '£2.00'
    end
  end
end
