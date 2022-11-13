# frozen_string_literal: true

require_relative 'encrypter'
require_relative 'decrypter'

# this is the Enigma class
class Enigma
  def initialize; end

  def encrypt(input, key = rand.to_s[2..6], date = Date.today)
    encrypter = Encrypter.new(input: input, key: Key.new(base: key), offset: Offset.new(date: date))
    {
      encryption: encrypter.encrypt,
      key: encrypter.key.base,
      date: encrypter.offset.convert_date
    }
  end

  def decrypt(input, key, date = Date.today)
    decrypter = Decrypter.new(input: input, key: Key.new(base: key), offset: Offset.new(date: date))
    {
      decryption: decrypter.decrypt,
      key: decrypter.key.base,
      date: decrypter.offset.convert_date
    }
  end
end
