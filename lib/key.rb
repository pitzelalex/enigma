# frozen_string_literal: true

# this is the Key class
class Key
  attr_reader :base

  def initialize
    @base = rand.to_s[2..6]
  end
end