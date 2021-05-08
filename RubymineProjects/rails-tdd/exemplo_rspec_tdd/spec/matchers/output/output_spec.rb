# frozen_string_literal: true

describe 'Matcher output' do
  it { expect { puts 'Alan' }.to output.to_stdout }
  it { expect { print 'Alan' }.to output('Alan').to_stdout }
  it { expect { puts 'Alan da Silva Alves' }.to output(/Alan/).to_stdout }

  it { expect { warn 'Alan' }.to output.to_stderr }
  it { expect { warn 'Alan' }.to output("Alan\n").to_stderr }
  it { expect { warn 'Alan da Silva Alves' }.to output(/Alan/).to_stderr }
end
