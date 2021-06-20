# frozen_string_literal: true

t = gets.strip.to_i

resultado = ''

t.times do |_num|
  linha = gets.strip.split(' ')
  pa, pb, g1, g2 = linha
  pa = pa.to_i
  pb = pb.to_i
  g1 = g1.to_f
  g2 = g2.to_f
  g1 = 1 + (g1 / 100.0) if g1.positive?
  g2 = 1 + (g2 / 100.0) if g2.positive?

  count = 0

  while pa <= pb
    pa *= g1 if g1.positive?
    pb *= g2 if g2.positive?
    pa = pa.to_i
    pb = pb.to_i
    count += 1
    break if count > 100
  end

  if count <= 100
    resultado << count.to_s << " anos.\n"
  else
    resultado << "Mais de 1 seculo.\n"
  end
end

puts resultado
