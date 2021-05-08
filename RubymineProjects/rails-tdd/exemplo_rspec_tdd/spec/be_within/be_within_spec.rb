describe 'be_within' do
  # within 11.5 - 12.5
  # this is delta 0.5 for up or down, delta work float
  it { expect(12.5).to be_within(0.5).of(12) }
end
