# frozen_string_literal: true

require 'rspec'
require './lib/key'

describe Key do
  describe '#initialize' do
    it 'instantiates correctly' do
      key = Key.new

      expect(key).to be_a Key
      expect(key.length).to be 5
      expect(key).to be_a Integer
    end
  end
end
