# frozen_string_literal: true

require 'student'
require 'course'

describe 'Mocks' do
  # Mocks are used to test behavior
  # Stubs are used to replace states
  #
  # In mock phase are in different order than xUnit
  # Setup (System under test)
  # Verify
  # Exercise
  it '#bar' do
    # phase setup
    student = Student.new

    # phase verify
    expect(student).to receive(:bar)

    # phase exercises
    student.bar
  end
end
