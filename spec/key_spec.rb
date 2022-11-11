# frozen_string_literal: true

require 'rspec'
require './lib/key'

describe Key do
  describe '#initialize' do
    it 'instantiates correctly' do
      key1 = Key.new
      key2 = Key.new(base: '12345')

      expect(key1).to be_a Key
      expect(key1.base.length).to be 5
      expect(key1.base).to be_a String
      expect(key2).to be_a Key
      expect(key2.base).to eq('12345')
    end
  end

  describe 'key methods' do
    let(:key1) { Key.new(base: 12345) }
    let(:key2) { Key.new(base: 54321) }

    describe '#a_key' do
      it 'returns the first 2 characters of the base' do
        expect(key1.a_key).to eq(12)
        expect(key2.a_key).to eq(54)
      end
    end
  end
end
