# frozen_string_literal: true

require 'rspec'
require './lib/offset'
require 'date'

describe Offset do
  describe '#initialize' do
    it 'instantiates correctly' do
      offset1 = Offset.new
      offset2 = Offset.new(date: Date.parse('May 29, 1993'))

      expect(offset1).to be_a Offset
      expect(offset1.date).to be_a Date
      expect(offset1.date).to eq(Date.today)
      expect(offset2.date).to eq(Date.parse('May 29, 1993'))
    end
  end

  describe '#convert_date' do
    it 'returns the date formatted as an integer DDMMYY' do
      offset = Offset.new(date: Date.parse('May 29, 1993'))

      expect(offset.convert_date).to eq('052993')
    end
  end

  describe '#square_date' do
    it 'squares the date to be used for the offsets' do
      expect(Offset.square_date).to eq(2808258049)
    end
  end

  # describe 'offset methods' do
  #   let(:offset1) { Offset.new(date: '12345') }
  #   let(:offset2) { Offset.new(date: '54321') }
  #   let(:offset3) { Offset.new(date: '00230') }

  #   describe '#a_offset' do
  #     it 'returns the first 2 characters of the base' do
  #       expect(offset1.a_offset).to eq('12')
  #       expect(offset2.a_offset).to eq('54')
  #       expect(offset3.a_offset).to eq('00')
  #     end
  #   end

  #   describe '#b_offset' do
  #     it 'returns the second 2 characters of the base' do
  #       expect(offset1.b_offset).to eq('23')
  #       expect(offset2.b_offset).to eq('43')
  #       expect(offset3.b_offset).to eq('02')
  #     end
  #   end

  #   describe '#c_offset' do
  #     it 'returns the 3rd 2 characters of the base' do
  #       expect(offset1.c_offset).to eq('34')
  #       expect(offset2.c_offset).to eq('32')
  #       expect(offset3.c_offset).to eq('23')
  #     end
  #   end

  #   describe '#d_offset' do
  #     it 'returns the 4th 2 characters of the base' do
  #       expect(offset1.d_offset).to eq('45')
  #       expect(offset2.d_offset).to eq('21')
  #       expect(offset3.d_offset).to eq('30')
  #     end
  #   end
  # end
end
