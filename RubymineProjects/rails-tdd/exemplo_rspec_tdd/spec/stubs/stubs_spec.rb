# frozen_string_literal: true

require 'student'
require 'course'

describe 'Stub' do
  # Stub ..
  it '#has_finished?' do
    student = Student.new
    course = Course.new

    allow(student).to receive(:has_finished?).with(an_instance_of(Course)).and_return(true)

    course_finished = student.has_finished?(course)

    expect(course_finished).to be_truthy
  end

  it 'Dynamic Arguments' do
    student = Student.new

    allow(student).to receive(:foo) do |arg|
      case arg
      when :hello
        'Hello!'
      when :hi
        'Hi!!'
      end
    end

    expect(student.foo(:hello)).to eq('Hello!')
    expect(student.foo(:hi)).to eq('Hi!!')
  end

  it 'Any instance of class' do
    student = Student.new
    other_student = Student.new

    allow_any_instance_of(Student).to receive(:bar).and_return(true)

    expect(student.bar).to be_truthy
    expect(other_student.bar).to be_truthy
  end

  it 'Errors' do
    student = Student.new

    allow(student).to receive(:bar).and_raise(RuntimeError)

    expect{ student.bar }.to raise_error(RuntimeError)
  end
end
