# frozen_string_literal: true

O = gets.chomp.upcase
M = [].freeze
sum = 0.0
count = 0

(1..12).each_with_index do |_v1, k1|
  row = []
  (1..12).each_with_index do |_v2, k2|
    value = gets.chomp.to_f
    row << value
    if k2 > k1
      sum += value
      count += 1
    end
  end
  M << row
end

case O
when 'S'
  puts sum
when 'M'
  media = sum / count
  puts media.round(1)
end
