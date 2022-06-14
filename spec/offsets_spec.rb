require 'simplecov'
SimpleCov.start
require './lib/enigma'
require 'date'

RSpec.describe Offsets do
  before :each do
    @current_offset = Offsets.new
  end

  it 'exists' do
    expect(@current_offset).to be_a(Offsets)
  end
end
