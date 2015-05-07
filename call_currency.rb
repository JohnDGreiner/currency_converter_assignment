require "./currency.rb"

euro = Currency.new(1.00,"EUR")
euros = Currency.new(10.00,"EUR")
dollar = Currency.new(1.00, "USD")
dollars = Currency.new(10.00,"USD")


# puts euro.code
# puts euro.amount

#tests = euro != (euros)
#puts tests

tests = euro + dollar
puts tests
