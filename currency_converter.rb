class CurrencyConverter
  attr_reader :code_rates

  def initialize(code_rates)
    @code_rates = code_rates
  end

  def convert(currency_in,code)
    Currency.new(code,currency_in.amount * code_rates[code] / code_rates[currency_in.currency_code] )
  end

end
