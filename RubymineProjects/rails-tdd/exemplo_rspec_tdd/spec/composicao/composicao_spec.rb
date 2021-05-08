# frozen_string_literal: true

require_relative 'helper'

RSpec.configure do |conf|
  conf.include Helper
end

describe 'Ruby on Rails' do
  before(:each) do
    puts '******* before each test *******'
  end

  after(:each) do
    puts '******* after each test *******'
  end

  it { is_expected.to start_with('Ruby').and end_with('Rails') }
  it { expect(fruit).to eq('apple').or eq('orange').or eq('grape') }

  # # helper method arbitrary
  # def fruit
  #   %w[apple orange grape].sample
  # end
end
