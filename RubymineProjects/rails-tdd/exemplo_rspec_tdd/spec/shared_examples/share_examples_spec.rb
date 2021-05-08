# frozen_string_literal: true

require 'pessoa'

shared_examples 'status' do |feel|
  it "#{feel}" do
    pessoa.send("#{feel}!")
    expect(pessoa.status).to eq("Very #{feel.capitalize}!")
  end
end

describe 'Pessoa' do
  subject(:pessoa) { Pessoa.new }

  # need you name from test on example is 'status'
  it_behaves_like 'status', :happy
  it_behaves_like 'status', :unhappy
  it_behaves_like 'status', :smiling
  # it 'happy!' do
  #   pessoa.happy!
  #   expect(pessoa.status).to eq('Very happy!')
  # end

  # it 'unhappy!' do
  #   pessoa.unhappy!
  #   expect(pessoa.status).to eq('Very unhappy!')
  # end

  # it 'smiling!' do
  #   pessoa.smiling!
  #   expect(pessoa.status).to eq('Very smiling!')
  # end
end
