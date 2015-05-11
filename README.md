#Currency Converter
Use the classes for storing and converting currencies using exchange rates.

##Create a Currency
Use this class by entering a monetary amount and currency code. You may also enter an amount with currency symbol.

###Methods

* amount - Retrieves number value of Currency object.
* currency_code - Retrieves currency string value of Currency object.
* ==, !=, +, -, and * are also available for use with the Currency object.

##Create Conversion Rates

Initialize this class with a hash of currency codes and their conversion rates.

###Methods

* code_rates - Retrieve hash of rates and currency codes
* convert - Pass Currency object you wish to convert and currency code to convert it to.
