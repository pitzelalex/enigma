# frozen_string_literal: true

require 'rspec'
require './lib/decrypter'

describe Decrypter do
  describe '#initialize' do
    it 'instantiates correctly' do
      key = Key.new(base: 12345)
      offset = Offset.new(date: Date.parse('May 29, 1993'))
      crypt = Edcrypter.new(key: key, offset: offset, input: 'aawlh,wgokho!')

      expect(crypt).to be_a Decrypter
      expect(crypt.key).to be_a Key
      expect(crypt.offset).to be_a Offset
      expect(crypt.input).to eq('hello world')
    end
  end
end
