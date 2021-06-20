# frozen_string_literal: true

if __FILE__ == $PROGRAM_NAME
  quantidade = gets.strip.to_i - 1

  (0..quantidade).each do |_elemento|
    valores = ($stdin.gets.strip).split(' ')
    break if valores.size != 2

    first = valores[0].to_s
    last = valores[1].to_s

    if (first.length.positive? && last.length.positive?) && ((first.length <= 1000) && (last.length <= 1000))
      first[(first.length - last.length).abs..(first.length - 1)] == last ? (puts 'encaixa') : (puts 'nao encaixa')
    end
  end
end
