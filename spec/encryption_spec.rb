#all encryption tests
require 'simplecov'
SimpleCov.start
require './lib/enigma'
require './lib/encrypt'
require './lib/decryption'
require 'date'

RSpec.describe Encryption do
  before :each do
    @encryption_message = Encryption.new("hello world", "02715", "040895")
  end

  it 'exists & has attributes' do
    expect(@encryption_message).to be_a(Encryption)
  end

  it "can return encryption, key, and date" do
    expect(@enigma.encrypt("hello world", "02715", "040895"))
  end
end
