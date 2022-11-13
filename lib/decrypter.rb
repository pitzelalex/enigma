# frozen_string_literal: true

require_relative 'key'
require_relative 'offset'

# this is the Decrypter class
class Decrypter
  attr_reader :key,
              :offset,
              :input

  def initialize(input:, key: Key.new, offset: Offset.new)
    @key = key
    @offset = offset
    @input = input
  end
end
