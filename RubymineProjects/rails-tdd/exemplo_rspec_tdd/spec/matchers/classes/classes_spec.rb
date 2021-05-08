describe 'Classes' do
  it 'be_instance_of' do
    # exactly u class
    expect(10).to be_instance_of(Integer)
  end

  it 'be_kind_of' do
    # may be by inheritance
    expect(10).to be_kind_of(Integer)
  end

  it 'respond_to' do
    expect("ruby").to respond_to(:size)
    expect("ruby").to respond_to(:count)
  end

  it 'be_an / be_a' do
    # do after
  end
end