# frozen_string_literal: true

require 'rspec'
require './lib/offset'

describe Offset do
  describe '#initialize' do
    it 'instantiates correctly' do
      offset1 = Offset.new
      # offset2 = Offset.new(date: )

      expect(offset1).to be_a Offset
      expect(offset1.date).to be_a Date
      # expect(key2).to be_a Offset
      # expect(key2.base).to eq('12345')
    end
  end
end
