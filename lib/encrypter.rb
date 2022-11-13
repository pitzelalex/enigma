# frozen_string_literal: true

require_relative 'key'
require_relative 'offset'

# this is the Encrypter class
class Encrypter
  attr_reader :key,
              :offset,
              :input

  def initialize(input:, key: Key.new, offset: Offset.new)
    @key = key
    @offset = offset
    @input = input
  end

  def encrypt
    alphabet = ('a'..'z').to_a << ' '
    input_arr = @input.split('')
    a_encryption = @key.a_key.to_i + @offset.a_offset.to_i
    b_encryption = @key.b_key.to_i + @offset.b_offset.to_i
    c_encryption = @key.c_key.to_i + @offset.c_offset.to_i
    d_encryption = @key.d_key.to_i + @offset.d_offset.to_i
    crypt_arr = [a_encryption, b_encryption, c_encryption, d_encryption]
    encrypted = input_arr.map do |character|
      if alphabet.include?(character)
        alphabet.rotate! until alphabet[0] == character
        alphabet.rotate!(crypt_arr[0])
        crypt_arr.rotate!
        alphabet[0]
      else
        character
      end
    end
    encrypted.join.to_s
  end
end
