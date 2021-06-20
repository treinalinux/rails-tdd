# frozen_string_literal: true

def fibonacci(num)
  vector = [0, 1]

  index = 2
  while index < num + 1
    a = vector[index - 2]
    p = vector[index - 1]
    vector[index] = a + p
    index += 1
  end
  vector[num]
end

t = gets.strip.to_i
output = ''

t.times do
  n = gets.strip.to_i
  value = fibonacci(n)
  output << "Fib(#{n}) = #{value}\n"
end

puts output
