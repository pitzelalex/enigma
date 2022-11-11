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

  def b_key
    @base[1..2]
  end

  def c_key
    @base[2..3]
  end

  def d_key
    @base[3..4]
  end
end
