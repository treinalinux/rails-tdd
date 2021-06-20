let caso = parseInt(gets());

function calcularDias(quantidadeComida) {
  if (quantidadeComida <= 1.0) {
    return 0;
  }
  const comeComida = quantidadeComida / 2.0;

  return 1 + calcularDias(comeComida);
}

while (caso-- > 0) {
  const quantidadeComida = parseFloat(gets());
  const diasFinais = calcularDias(quantidadeComida);

  console.log(diasFinais, 'dias');
}
