describe 'Test Double' do
  # Double mock object
  it '--' do
    user = double('User')
    allow(user).to receive_messages(name: 'Alan', password: 'secret')
    user.name
    user.password
  end

  it 'as_null_object' do
    # messages of error will null
    user = double('User').as_null_object
    allow(user).to receive_messages(name: 'Alan', password: 'secret')
    user.name
    user.password
  end
end
