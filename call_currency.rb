require "./currency.rb"
require "./currency_converter"

euro = Currency.new(1.00,"EUR")
euros = Currency.new(10.00,"EUR")
dollar = Currency.new(1.00,"USD")
dollars = Currency.new(10.00,"USD")
dollar_and_change = Currency.new(1.50,"USD")
dollar_symbol = Currency.new("€ 135.24", "JPN")


# puts euro.code
# puts euro.amount

#tests = euro != (euros)
#puts tests

#puts tests = (dollars *2.50)
#puts tests.amount
#puts tests.currency_code

exchange = CurrencyConverter.new({"USD" => 1.0, "EUR" => 0.74, "JPY" => 120.00})

puts exchange.code_rates
check_me = exchange.convert(euro,"EUR")
p check_me
p dollar_symbol
