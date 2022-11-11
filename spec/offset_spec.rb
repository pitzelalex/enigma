# frozen_string_literal: true

require 'rspec'
require './lib/offset'
require 'date'

describe Offset do
  describe '#initialize' do
    it 'instantiates correctly' do
      offset1 = Offset.new
      offset2 = Offset.new(date: Date.parse('May 29, 1993'))

      expect(offset1).to be_a Offset
      expect(offset1.date).to be_a Date
      expect(offset1.date).to eq(Date.today)
      expect(offset2.date).to eq(Date.parse('May 29, 1993'))
    end
  end
end
