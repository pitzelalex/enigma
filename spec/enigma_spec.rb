# frozen_string_literal: true

require 'rspec'
require './lib/enigma'

describe Enigma do
  describe '#initialize' do
    it 'instantiates correctly' do
      enigma = Enigma.new

      expect(enigma).to be_a Enigma
    end
  end
end
