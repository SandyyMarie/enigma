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
    # require 'pry' ; binding.pry
    expect(@key_generator.new_key.digits.count).to eq(5)
  end

  it "can  utilize #key_split to divide into the ABCD keys" do
    @key_generator.key_split(@key_generator.new_key)
    expect(@key_generator.a_key.length).to eq(2)
    expect(@key_generator.b_key.length).to eq(2)
    expect(@key_generator.c_key.length).to eq(2)
    expect(@key_generator.d_key.length).to eq(2)
  end
end
