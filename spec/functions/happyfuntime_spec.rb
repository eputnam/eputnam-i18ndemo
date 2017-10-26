require 'spec_helper'

describe 'happyfuntime' do
  it { is_expected.to run.with_params('hello') }
end
