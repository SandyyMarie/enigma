require 'simplecov'
SimpleCov.start
require './lib/enigma'
require 'date'

RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new
  end

  it 'exists & has attributes' do
    expect(@enigma).to be_a(Enigma)
  end

  it "ENCRYPT: can take a string to be encrypted, a key, and a date (given or generated) and returns encryption hash" do
    encrypted = @enigma.encrypt("hello world", "02715")
    expect(@enigma.encrypt(message, key, date)).to be_a(Hash)
    expect(encrypted).to be_a(String)
    expect(enigma.encrypt("hello world")).to be_a(Hash)
  end

  it "DECRYPT: can take ciphertext string and key, along with OPTIONALLY taking date as arg - if no date is given it fills with current date and returns hash with 3 keys" do
    encrypted = @enigma.encrypt("hello world", "02715")
    @enigma.decrypt(encrypted[:encryption], "02715")
    expect(@enigma.decryption(ciphertext, key, date)).to be_a(Hash)
  end

end
