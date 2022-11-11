# frozen_string_literal: true

require 'date'

# this is the Offset class
class Offset
  attr_reader :date

  def initialize(date: Date.today)
    @date = date
  end

  def convert_date
    d = @date.strftime('%d')
    m = @date.strftime('%m')
    y = @date.strftime('%y')
    @_converted_date ||= m + d + y
  end
end
