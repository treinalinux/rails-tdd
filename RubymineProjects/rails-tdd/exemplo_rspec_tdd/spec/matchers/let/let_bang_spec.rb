# frozen_string_literal: true

$counter = 0

describe 'let!' do
  ordem_de_invocacao = []
  let!(:contador) do
    ordem_de_invocacao << :let!
    $counter += 1
  end

  it 'call method helper before test' do
    ordem_de_invocacao << :exemplo
    expect(ordem_de_invocacao).to eq(%i[let! exemplo])
    expect(contador).to eq(1)
  end
end
