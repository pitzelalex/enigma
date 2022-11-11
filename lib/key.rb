# frozen_string_literal: true

# this is the Key class
class Key
  attr_reader :base

  def initialize(base: rand.to_s[2..6])
    @base = base
  end

  def a_key
    @base[0..1]
  end
end
