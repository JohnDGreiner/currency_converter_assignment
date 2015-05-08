class CurrencyConverter
  attr_reader :currency_rates

  def initialize(code_rates)
    @currency_rates = {}
    @currency_rates = code_rates
  end

  def convert(currency_in,code)

    Currency.new(code,currency_in.amount * @currency_rates[code])
  end

end
