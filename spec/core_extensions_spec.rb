describe Integer do
  context '#money_format' do
    it 'converts money to £xx.xx' do
      expect(200.money_format).to eq '£2.00'
      expect(3.money_format).to eq '£0.03'
      expect(30.money_format).to eq '£0.30'
      expect(30_000.money_format).to eq '£300.00'
    end
  end
end
