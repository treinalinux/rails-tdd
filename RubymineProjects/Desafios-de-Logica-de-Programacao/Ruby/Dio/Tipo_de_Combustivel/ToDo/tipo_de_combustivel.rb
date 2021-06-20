option = 0

alcohol = 0
fuel = 0
diesel = 0

while option != #complete o codigo
	option = gets.strip.to_i

	case option
	when 1 then alcohol += 1
	#complete o codigo com as outras opcoes

	when 4 then puts "  " #complete com a mensagem final
	end
end

puts "Alcool: #{alcohol}"
puts "Gasolina: #{fuel}"
puts "Diesel: #{diesel}"
