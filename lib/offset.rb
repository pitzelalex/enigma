# frozen_string_literal: true

require 'date'

# this is the Offset class
class Offset
  attr_reader :date

  def initialize(date: Date.today)
    @date = date
  end

  def convert_date
    return @date if @date.is_a? String

    d = @date.strftime('%d')
    m = @date.strftime('%m')
    y = @date.strftime('%y')
    m + d + y
  end

  def square_date
    @square_date ||= convert_date.to_i ** 2
  end

  def a_offset
    square_date.digits[3]
  end

  def b_offset
    square_date.digits[2]
  end

  def c_offset
    square_date.digits[1]
  end

  def d_offset
    square_date.digits[0]
  end
end
