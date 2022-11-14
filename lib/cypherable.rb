# frozen_string_literal: true

# This is the Cypherable module
module Cypherable
  def a_cypher
    @key.a_key.to_i + @offset.a_offset.to_i
  end

  def b_cypher
    @key.b_key.to_i + @offset.b_offset.to_i
  end

  def c_cypher
    @key.c_key.to_i + @offset.c_offset.to_i
  end

  def d_cypher
    @key.d_key.to_i + @offset.d_offset.to_i
  end
end
