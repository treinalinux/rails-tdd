# frozen_string_literal: true

RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1, 2, 3, 4]), 'Arrays' do
  it '#include' do
    expect(subject).to include(2)
    expect(subject).to include(2, 1)
  end

  it { expect(subject).to exclude(5) }

  it '#match array' do
    expect(subject).to match_array([1, 2, 3, 4])
  end

  it '#contain_exactly' do
    expect(subject).to contain_exactly(2, 3, 4, 1)
  end
end
