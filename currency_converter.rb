class CurrencyConverter
  attr_reader :currency_rates

  def initialize(code_rate)
    @currency_rates = {}
    @currency_rates = code_rate
  end

  # def load_rates
  #   @currency_rates = {"USD" => {"USD" => 1.000, "EUR" => 0.89154}}
  # end

end
