# frozen_string_literal: true

require 'rspec'
require './lib/cypherable'
require './lib/encrypter'
require './lib/decrypter'

describe Cypherable do
  describe '#a_cypher' do
    it 'combines the a_key and a_offset' do
      key = double('key')
      offset = double('offset')
      allow(key).to receive(:a_key).and_return('12')
      allow(offset).to receive(:a_offset).and_return('8')

      encrypter = Encrypter.new(input: 'test', key: key, offset: offset)

      expect(encrypter.a_cypher).to eq(20)
    end
  end

  describe '#b_cypher' do
    it 'combines the b_key and b_offset' do
      key = double('key')
      offset = double('offset')
      allow(key).to receive(:b_key).and_return('23')
      allow(offset).to receive(:b_offset).and_return('0')

      encrypter = Encrypter.new(input: 'test', key: key, offset: offset)

      expect(encrypter.b_cypher).to eq(23)
    end
  end

  describe '#c_cypher' do
    it 'combines the c_key and c_offset' do
      key = double('key')
      offset = double('offset')
      allow(key).to receive(:c_key).and_return('34')
      allow(offset).to receive(:c_offset).and_return('4')

      encrypter = Encrypter.new(input: 'test', key: key, offset: offset)

      expect(encrypter.c_cypher).to eq(38)
    end
  end

  describe '#d_cypher' do
    it 'combines the d_key and d_offset' do
      key = double('key')
      offset = double('offset')
      allow(key).to receive(:d_key).and_return('45')
      allow(offset).to receive(:d_offset).and_return('9')

      encrypter = Encrypter.new(input: 'test', key: key, offset: offset)

      expect(encrypter.d_cypher).to eq(54)
    end
  end
end