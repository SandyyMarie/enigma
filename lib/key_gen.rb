require 'securerandom'
class Key_Gen

  attr_reader :new_key, :a_key, :b_key, :c_key, :d_key
  def initialize
    @new_key = SecureRandom.random_number(99999)
    key_split(@new_key)
    #might need to return new_key
  end

  def key_split(new_key) #might need to leave as string
    @a_key = @new_key.to_s[0..1].to_i
    @b_key = @new_key.to_s[1..2].to_i
    @c_key = @new_key.to_s[2..3].to_i
    @d_key = @new_key.to_s[3..4].to_i
  end
end
