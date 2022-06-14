require 'simplecov'
SimpleCov.start
require './lib/enigma'
require './lib/key_gen'
require 'date'

RSpec.describe Key_Gen do
  before :each do
    @key_generator = Key_Gen.new
  end

  it 'exists & has attributes' do
    expect(@key_generator).to be_a(Key_Gen)
  end

  it "generates 5 integers" do
    expect(@key_generator.new_key.digits.count).to eq(5)
  end

  it "can split the key into the ABCD keys" do
    expect(@key_generator.a_key.digits.count).to eq(2)
    expect(@key_generator.b_key.digits.count).to eq(2)
    expect(@key_generator.c_key.digits.count).to eq(2)
    expect(@key_generator.d_key.digits.count).to eq(2)
  end
end
