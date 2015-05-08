class CurrencyConverter
  attr_reader :currency_rates

  def initialize
    @currency_rates = {}
  end

  def load_rates
    @currency_rates = {"USD" => {"USD" => 1.000, "EUR" => 0.89154}}
  end

end
