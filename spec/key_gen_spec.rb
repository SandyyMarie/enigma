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
end
