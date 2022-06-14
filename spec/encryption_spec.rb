#all encryption tests
require 'simplecov'
SimpleCov.start
require './lib/enigma'
require './lib/encryption'
require './lib/decryption'
require 'date'

RSpec.describe Encryption do
  before :each do
    @encryption_message = Encryption.new(message, key, date)
  end

  it 'exists & has attributes' do
    expect(@encryption_message).to be_a(Encryption)
  end
end
