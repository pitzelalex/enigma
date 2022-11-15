# frozen_string_literal: true

require_relative 'key'
require_relative 'offset'
require_relative 'cypherable'

# this is the Encrypter class
class Encrypter
  include Cypherable

  attr_reader :key,
              :offset,
              :input

  def initialize(input:, key: Key.new, offset: Offset.new)
    @key = key
    @offset = offset
    @input = input.downcase
  end

  def encrypt
    alphabet = ('a'..'z').to_a << ' '
    input_arr = @input.split('')
    crypt_arr = [a_cypher, b_cypher, c_cypher, d_cypher]

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
