module SimpleCheckout
  INVENTORY = {
    milk:       50,
    cheese:     350,
    steak:      1800,
    ice_cream:  400,
    tomatos:    80,
    spinach:    100,
    bread:      100,
    chicken:    500,
    salmon:     600
  }

  def get_price(item_name)
    item = item_name.split.join('_').to_sym
    price = INVENTORY[item]
  end
end
