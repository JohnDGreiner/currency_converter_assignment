class Currency
  attr_reader :currency_code, :amount

  def initialize(amount = 0.0, currency_code = "USD" )
    @currency_code = currency_code
    if amount.is_a?(String)
      symbol = amount[0]
      get_symbol(symbol)
      @amount = amount.split(symbol)[1].to_f
    else
      @amount = amount
    end
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

  def *(multiplier)
    Currency.new(@amount * multiplier,@currency_code)
  end

  def get_symbol(symbol)
    currency_symbols = {"€" => "EUR", "£" => "GBP", "$" => "USD"}
    if currency_symbols.include?(symbol)
      @currency_code = currency_symbols[symbol]
    else
      raise CurrencySymbolError, "Currency code does not exist"
      exit
    end
  end
end

class DifferentCurrencyCodeError < StandardError
end

class CurrencySymbolError < StandardError
end
