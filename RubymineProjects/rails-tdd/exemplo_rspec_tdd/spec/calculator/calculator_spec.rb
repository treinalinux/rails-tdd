# frozen_string_literal: true

require 'calculator'

# Name of my Class Calculator or an description
# this is example common view, with before use of class: RSpec.describe ...
# RSpec.describe Calculator, ' - just any explanatory text' do
describe Calculator, ' - just any explanatory text' do
  context '#div' do
    it 'divide by 0' do
      # use block {} and not use () when work errors
      # Prefer use raise_error on place of raise_exception (is generic)
      expect { subject.div(3, 0) }.to raise_error(ZeroDivisionError)
      expect { subject.div(4, 0) }.to raise_error('divided by 0')
      expect { subject.div(5, 0) }.to raise_error(ZeroDivisionError, 'divided by 0')
      expect { subject.div(5, 0) }.to raise_error(/divided/)
    end
  end
  context '#sum' do
    # it used for describe a method
    # if it is not body your test, will be pending
    # if it used with x before "xit", will be skipped
    it 'with positive numbers' do
      # The 'subject'(implicit) makes it possible to not use an instance like Class.new
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
