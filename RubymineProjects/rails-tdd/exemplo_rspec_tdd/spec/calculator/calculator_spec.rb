# frozen_string_literal: true

require 'calculator'

# Name of my Class Calculator or an description
describe Calculator do
  context '#sum' do
    # it used for describe a method
    # if it is not body your test, will be pending
    # if it used with x before "xit", will be skipped
    it 'with positive numbers' do
      result = subject.sum(5, 7)
      expect(result).to eq(12)
    end

    it 'with negative and positive numbers' do
      result = subject.sum(-5, 7)
      expect(result).to eq(2)
    end

    it 'with negative numbers' do
      result = subject.sum(-5, -7)
      expect(result).to eq(-12)
    end
  end
end
