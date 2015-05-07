class DifferentCurrencyCodeError < StandardError
end

class Currency
  attr_reader
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
      #puts "Not the same currency, cannot add."
      raise DifferentCurrencyCodeError, "Not the same currency, cannot add."
    end
  end

  def -(currency)
    if @currency_code == currency.code
      @amount - currency.amount
    else
      raise DifferentCurrencyCodeError, "Not the same currency, cannot subtract."
    end
  end


end
