# frozen_string_literal: true

require 'date'

# this is the Offset class
class Offset
  attr_reader :date

  def initialize(date: Date.today)
    @date = date
  end
end
