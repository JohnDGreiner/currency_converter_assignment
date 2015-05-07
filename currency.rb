class Currency

  def initialize(amount = 0.0, currency_code = "USD")
    @amount = amount
    @currency_code = currency_code
  end

  def code
    @currency_code
  end

  def amount
    @amount
  end

  def ==(currency)
    @amount == currency.amount &&  @currency_code == currency.code

  end

end
