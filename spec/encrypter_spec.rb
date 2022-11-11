# frozen_string_literal: true

require 'rspec'
require './lib/encrypter'

describe Encrypter do
  describe '#initialize' do
    it 'instantiates correctly' do
      crypt = Encrypter.new

      expect(crypt).to be_a Encrypter
      expect(crypt.key).to be_a Key
      expect(crypt.offset).to be_a Offset
    end
  end
end
