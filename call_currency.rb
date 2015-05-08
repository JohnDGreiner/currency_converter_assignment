require "./currency.rb"
require "./currency_converter"

euro = Currency.new("EUR",1.00)
euros = Currency.new("EUR",10.00)
dollar = Currency.new("USD",1.00)
dollars = Currency.new("USD",10.00)
dollar_and_change = Currency.new("USD",1.50)


# puts euro.code
# puts euro.amount

#tests = euro != (euros)
#puts tests

#puts tests = (dollars *2.50)
#puts tests.amount
#puts tests.currency_code

exchange = CurrencyConverter.new("USD" => 1.0, "EUR" => 0.74, "JPY" => 120.00)
#exchange.load_rates
puts exchange.currency_rates
check_me = exchange.convert(dollar,"USD")
p check_me
