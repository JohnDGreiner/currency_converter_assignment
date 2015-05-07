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

  def !=(currency)
    @amount != currency.amount ||  @currency_code != currency.code
  end

  def +(currency)
    if @currency_code == currency.code
      @amount + currency.amount
    else
      puts "Not the same currency, cannot add."
    end
  end
end
