require 'pessoa'

describe 'Atributos' do
  # the variable will used only when first call, and stay cache test
  let(:pessoa) { Pessoa.new }

  it 'have_attributes' do
    pessoa = Pessoa.new
    pessoa.nome = 'Alan'
    pessoa.idade = 36

    expect(pessoa).to have_attributes(nome: start_with('A'), idade: (be >= 30))
  end
end