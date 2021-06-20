t = gets.strip.to_i
resultado = ""

t.times do |num|
	linha = gets.strip.split(' ')
	pa, pb, g1, g2 = linha

	pa = pa.to_i
	#declare as demais variaveis corretamente

	g1 = 1 + (g1 / 100.0) if g1 > 0
	#complete a atribuição

	count = 0

	while pa <= pb  #complete o while
		pa *= g1 if g1 > 0


		pa = pa.to_i


		count += 1

		break if count >  #insira o valor correto
	end

	if count <= #insira o valor correto
		resultado <<  << " anos.\n"  #complete o codigo
	else
		resultado << "  " #complete a saida
	end
end

puts #insira a variavel correta
