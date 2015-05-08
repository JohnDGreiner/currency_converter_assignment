class CurrencyConverter
  attr_reader :code_rates

  def initialize(code_rates)
    @code_rates = code_rates
  end

  def convert(currency_in,code)
    if code_rates.include?(currency_in.currency_code) && code_rates.include?(code)
      Currency.new(code,currency_in.amount * code_rates[code] / code_rates[currency_in.currency_code] )
    else
      raise UnknownCurrencyCodeError, "Currency Code does not exist."
    end
  end

end

class UnknownCurrencyCodeError < StandardError
end
