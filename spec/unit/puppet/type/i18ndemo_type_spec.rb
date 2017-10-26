require 'spec_helper'

describe Puppet::Type.type(:i18ndemo_type) do
  context 'bad name value' do
    let(:params) do
      {
        'ensure' => 'present',
        'name'   => '3245',
        'dir'    => '/etc'
      }
    end

    it 'should raise an error' do
      expect{described_class.new(params)}.to raise_error Puppet::ResourceError
    end
  end

  context 'bad dir value' do
    let(:params) do
      {
        'ensure' => 'present',
        'name'   => 'hello, world!',
        'dir'    => 'etc'
      }
    end

    it 'should raise an error' do
      expect{described_class.new(params)}.to raise_error Puppet::ResourceError
    end
  end
end
