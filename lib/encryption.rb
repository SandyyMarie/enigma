## organize encryption here
# def method_name (var1 = value1, var2 = value2) expr.. end
require 'date'
class Encryption
  attr_reader :string_to_encrypt, :key, :date
  def initialize(string_to_encrypt, key, date)
    @string_to_encrypt = string_to_encrypt
    @key = key
    @date = date
    #("a".."z").to_a << " "
    # ^ for character sheet
  end

  def encrypt
    ##
  end
end
