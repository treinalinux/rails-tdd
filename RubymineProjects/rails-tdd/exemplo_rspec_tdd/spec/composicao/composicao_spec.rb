# frozen_string_literal: true

describe 'Ruby on Rails' do
  it { is_expected.to start_with('Ruby').and end_with('Rails') }
  it { expect(fruit).to eq('apple').or eq('orange').or eq('grape') }

  def fruit
    %w[apple orange grape].sample
  end
end
