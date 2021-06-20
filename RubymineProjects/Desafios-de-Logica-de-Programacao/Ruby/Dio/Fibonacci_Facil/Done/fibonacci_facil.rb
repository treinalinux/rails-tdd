# frozen_string_literal: true

n = gets.strip.to_i

resultado = ''
soma = 0
ant = 0
prox = 1

0.upto(n - 1) do |num|
  if [0, 1].include?(num)
    resultado << num.to_s << ' '
  else
    soma = ant + prox
    ant = prox
    prox = soma
    resultado << soma.to_s << ' '
  end
end

puts resultado.strip
