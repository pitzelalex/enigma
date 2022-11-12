# frozen_string_literal: true

require_relative 'key'
require_relative 'offset'

# this is the Encrypter class
class Encrypter
  attr_reader :key,
              :offset

  def initialize(key: Key.new, offset: Offset.new)
    @key = key
    @offset = offset
  end
end
