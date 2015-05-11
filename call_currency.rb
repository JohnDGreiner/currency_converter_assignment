require "./currency.rb"
require "./currency_converter.rb"
require "./currency_trader.rb"

euro = Currency.new(1.00,"EUR")
euros = Currency.new(1000000.00,"JPY")
dollar = Currency.new(1.00,"USD")
dollars = Currency.new(1000000.00,"USD")
dollar_and_change = Currency.new(1.50,"USD")
dollar_symbol = Currency.new("€ 135.24", "JPN")


# puts euro.code
# puts euro.amount

#tests = euro != (euros)
#puts tests

#puts tests = (dollars *2.50)
#puts tests.amount
#puts tests.currency_code

exchange_one = CurrencyConverter.new({"USD" => 1.0, "EUR" => 2, "JPY" => 150.00})
exchange_two = CurrencyConverter.new({"USD" => 1.0, "EUR" => 1.5, "JPY" => 125.00})
currency_one = Currency.new("€ 135.24")

#puts exchange_one.code_rates
#puts exchange_two.code_rates

check_me = exchange_one.convert(dollars,"JPY")
#p check_me

check_me = exchange_two.convert(euros,"USD")
#p check_me

#p dollar_symbol

trader = CurrencyTrader.new(exchange_one,exchange_two,currency_one)
trader.best_trade
#p trader
