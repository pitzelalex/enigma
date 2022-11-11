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
    let(:key1) { Key.new(base: '12345') }
    let(:key2) { Key.new(base: '54321') }
    let(:key3) { Key.new(base: '00230') }

    describe '#a_key' do
      it 'returns the first 2 characters of the base' do
        expect(key1.a_key).to eq('12')
        expect(key2.a_key).to eq('54')
        expect(key3.a_key).to eq('00')
      end
    end

    describe '#b_key' do
      it 'returns the second 2 characters of the base' do
        expect(key1.b_key).to eq('23')
        expect(key2.b_key).to eq('43')
        expect(key3.b_key).to eq('02')
      end
    end

    describe '#c_key' do
      it 'returns the 3rd 2 characters of the base' do
        expect(key1.c_key).to eq('34')
        expect(key2.c_key).to eq('32')
        expect(key3.c_key).to eq('23')
      end
    end

    describe '#d_key' do
      it 'returns the 4th 2 characters of the base' do
        expect(key1.d_key).to eq('45')
        expect(key2.d_key).to eq('21')
        expect(key3.d_key).to eq('30')
      end
    end
  end
end
