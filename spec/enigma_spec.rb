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

  describe '#encrypt' do
    it 'returns a hash with encrypted message / associated key' do
      enigma = Enigma.new

      expect(enigma.encrypt('hello world', '02715', '040895')).to eq(
        {
          encryption: 'keder ohulw',
          key: '02715',
          date: '040895'
        }
      )
    end
  end
end
