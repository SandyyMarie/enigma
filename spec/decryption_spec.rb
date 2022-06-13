#all decryption tests
require 'simplecov'
SimpleCov.start
require './lib/enigma'
require './lib/encryption'
require './lib/decryption'
require 'date'

RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new
  end

  it 'exists & has attributes' do
    expect(@enigma).to be_a(Enigma)
  end
