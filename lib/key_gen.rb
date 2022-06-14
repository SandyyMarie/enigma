require 'securerandom'
class Key_Gen

  attr_reader :new_key
  def initialize
    #("a".."z").to_a << " "
    @new_key = SecureRandom.random_number(99999)
    # require 'pry' ; binding.pry
  end
end
