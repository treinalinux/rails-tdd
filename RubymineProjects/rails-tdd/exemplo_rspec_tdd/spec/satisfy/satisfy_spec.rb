# frozen_string_literal: true

describe 'Satisfy' do
  # no satisfy
  it { expect(10).to be_even }
  # use satisfy
  it { expect(10).to satisfy(&:even?) }

  # multiple 3
  it {
    expect(9).to satisfy('be a multiple of 3') do |x|
      (x % 3).zero?
    end
  }
end
