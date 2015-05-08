class Currency
  attr_reader :currency_code, :amount
  def initialize(currency_code = "USD", amount = 0.0 )
    @currency_code = currency_code
    @amount = amount
  end

  def ==(currency)
    @amount == currency.amount &&  @currency_code == currency.code
  end

  def !=(currency)
    @amount != currency.amount ||  @currency_code != currency.code
  end

  def +(currency)
    if @currency_code == currency.code
      @amount + currency.amount
    else
      #puts "Not the same currency, cannot add."
      raise DifferentCurrencyCodeError, "Not the same currency, cannot add."
    end
  end

  def -(currency)
    if @currency_code == currency.code
      @amount - currency.amount
    else
      raise DifferentCurrencyCodeError, "Not the same currency, cannot subtract."
    end
  end

  def *(multiplier)
    Currency.new(@amount * multiplier,@currency_code)
  end

  def get_symbol(symbol)

    currency_symbols = { "ALL" => "Lek", "AFN" => "؋", "ARS" => "$", "AWG" => "ƒ",
                         "AUD" => "$", "AZN" => "ман", "BSD" => "$", "BBD" => "$",
                         "BYR" => "p.", "BZD" => "BZ$", "BMD" => "$", "BOB" => "$b",
                         "BAM" => "KM", "BWP" => "P", "BGN" => "лв", "BRL" => "R$",
                         "BND" => "$", "KHR" => "៛", "CAD" => "$", "KYD" => "$",
                         "CLP" => "$", "CNY" => "¥", "COP" => "$", "CRC" => "₡",
                         "HRK" => "kn", "CUP" => "₱", "CZK" => "Kč", "DKK" => "kr",
                         "DOP" => "RD$", "XCD" => "$", "EGP" => "£", "SVC" => "$",
                         "EEK" => "kr", "EUR" => "€", "FKP" => "£", "FJD" => "$",
                         "GHC" => "¢", "GIP" => "£", "GTQ" => "Q", "GGP" => "£",
                         "GYD" => "$", "HNL" => "L", "HKD" => "$", "HUF" => "Ft",
                         "ISK" => "kr", "INR" => "TEST", "IDR" => "Rp", "IRR" => "﷼",
                         "IMP" => "£", "ILS" => "₪", "JMD" => "J$", "JPY" => "¥",
                         "JEP" => "£", "KZT" => "лв", "KPW" => "₩", "KRW" => "₩",
                         "KGS" => "лв", "LAK" => "₭", "LVL" => "Ls", "LBP" => "£",
                         "LRD" => "$", "LTL" => "TEST", "MKD" => "ден", "MYR" => "RM",
                         "MUR" => "₨", "MXN" => "$", "MNT" => "₮", "MZN" => "MT",
                         "NAD" => "$", "NPR" => "₨", "ANG" => "ƒ", "NZD" => "$",
                         "NIO" => "C$", "NGN" => "₦", "NOK" => "kr", "OMR" => "﷼",
                         "PKR" => "₨", "PAB" => "B/.", "PYG" => "Gs", "PEN" => "S/.",
                         "PHP" => "₱", "PLN" => "zł", "QAR" => "﷼", "RON" => "lei",
                         "RUB" => "руб", "SHP" => "£", "SAR" => "﷼", "RSD" => "Дин.",
                         "SCR" => "₨", "SGD" => "$", "SBD" => "$", "SOS" => "S",
                         "ZAR" => "R", "LKR" => "₨", "SEK" => "kr", "CHF" => "CHF",
                         "SRD" => "$", "SYP" => "£", "TWD" => "NT$", "THB" => "฿",
                         "TTD" => "TT$", "TRY" => "TEST2", "TRL" => "₤", "TVD" => "$",
                         "UAH" => "₴", "GBP" => "£", "USD" => "$", "UYU" => "$U",
                         "UZS" => "лв", "VEF" => "Bs", "VND" => "₫", "YER" => "﷼",
                         "ZWD" => "Z$"
                       }

  end

end

class DifferentCurrencyCodeError < StandardError
end
