# frozen_string_literal: true

require 'rspec'
require './lib/encrypter'

describe Encrypter do
  describe '#initialize' do
    it 'instantiates correctly' do
      crypt = Encrypter.new(input: 'hello world')

      expect(crypt).to be_a Encrypter
      expect(crypt.key).to be_a Key
      expect(crypt.offset).to be_a Offset
      expect(crypt.input).to eq('hello world')
    end
  end

  describe '#encrypt' do
    it 'changes the characters of a string based on the key and offset' do
      key = Key.new(base: 12345)
      offset = Offset.new(date: Date.parse('May 29, 1993'))
      crypt = Encrypter.new(key: key, offset: offset, input: 'hellow world')

      expect(crypt.encrypt).to eq('aawlhwgokho')
    end
  end
end
