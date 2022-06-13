#all decryption tests
require 'simplecov'
SimpleCov.start
require './lib/enigma'
require './lib/encryption'
require './lib/decryption'
require 'date'

RSpec.describe Decryption do
  before :each do
    @decryption_message = Decryption.new(ciphertext, key, date)
  end

  it 'exists & has attributes' do
    expect(@decryption_message).to be_a(Decryption)
  end
end
