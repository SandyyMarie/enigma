require 'securerandom'
class Key_Gen

  attr_reader :new_key, :a_key, :b_key, :c_key, :d_key
  def initialize
    #("a".."z").to_a << " "
    @new_key = SecureRandom.random_number(99999)
    # @a_key = []
    # @b_key = []
    # @c_key = []
    # @d_key = []

  end

  def key_split(new_key)
    @a_key = @new_key.to_s[0..1]
    @b_key = @new_key.to_s[1..2]
    @c_key = @new_key.to_s[2..3]
    @d_key = @new_key.to_s[3..4]


  end
end
