# frozen_string_literal: true

# you can use key: true or key: value
# can use collection: true for example of key: true, but can you to omit 'true'
# can use type: 'collection' for example of key: value
# go call rspec . -t collection for key: true
# go call rspec . -t type:collection for key: value
#
# is possible marked tests how to deny on .rspec file:
# --tag ~slow
# need you added on it an ... :slow do..
# ...
# Run options: include {:collection=>true}
describe 'all', collection: true do
  it { expect([1, 7, 9]).to all((be_odd).and(be_an(Integer))) }
  it { expect(%w[ruby rails]).to all(be_a(String).and(include('r'))) }
end
