describe 'Test Double' do
  # Double mock object
  it '--' do
    user = double('User')
    allow(user).to receive_messages(name: 'Alan', password: 'secret')
    user.name
    user.password
  end
end
