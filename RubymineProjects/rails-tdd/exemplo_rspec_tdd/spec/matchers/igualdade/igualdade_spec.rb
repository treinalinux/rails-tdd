describe 'Matchers of Equality' do
  it '#equal - Tests whether the object is the same' do
    x = "ruby"
    y = "ruby"
    expect(x).not_to equal(y)
    expect(x).to equal(x)
  end

  it '#be - Tests whether the object is the same' do
    x = "ruby"
    y = "ruby"
    expect(x).not_to be(y)
    expect(x).to be(x)
  end

  it '#eql - Tests the value/content' do
    x = "ruby"
    y = "ruby"
    expect(x).to eql(y)
  end

  it '#eq - Tests the value/content' do
    x = "ruby"
    y = "ruby"
    expect(x).to eq(y)
  end
end