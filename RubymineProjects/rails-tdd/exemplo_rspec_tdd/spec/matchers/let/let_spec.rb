$counter = 0

describe 'let' do
  let(:count) { $counter += 1 }

  it 'with value' do
    expect(count).to eq(1) # 1a load let
    expect(count).to eq(1) # 2a in cache
  end

  # not cache between the tests
  it 'not cached on tests' do
    expect(count).to eq(2)
  end
end