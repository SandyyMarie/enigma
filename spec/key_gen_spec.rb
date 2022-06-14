require 'simplecov'
SimpleCov.start
require './lib/enigma'
require 'date'

RSpec.describe Key_Gen do
  before :each do
    @key_generator = Key_Gen.new
  end

  it 'exists & has attributes' do
    expect(@key_generator).to be_a(Key_Gen)
  end
