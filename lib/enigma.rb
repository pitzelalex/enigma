# frozen_string_literal: true

require_relative 'encrypter'

# this is the Enigma class
class Enigma
  def initialize; end

  def encrypt(input, key, date)
    encrypter = Encrypter.new(input: input, key: Key.new(base: key), offset: Offset.new(date: date))
    {
      encryption: encrypter.encrypt,
      key: encrypter.key.base,
      date: encrypter.offset.convert_date
    }
  end
end
