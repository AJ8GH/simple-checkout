class Integer
  def money_format
    '£%.2f' % (self / 100.0)
  end
end
