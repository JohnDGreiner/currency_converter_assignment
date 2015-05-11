class CurrencyTrader
  attr_reader :start_rate, :end_rate, :investment

  def initialize(start_rates,end_rates,investment)
    @start_rates = start_rates
    @end_rates = end_rates
    @investment = investment
  end

  def best_trade
    @start_rates.each do |start_code,srate|
      @end_rates.each do |end_code,erate|
        if start_code == end_code
          compare = srates/erates
          if compare > best_rate
            best_code = start_code
            best_rate = compare
          end
        end
      end
    end
    invest_one = Currency.new(@start_rates.convert(@investment,best_code))
    Currency.new(@end_rates.convert(invest_one,best_code))
  end
end
