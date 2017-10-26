require 'spec_helper'

def tmpdirfactory
  top = Dir.mktmpdir
  FileUtils.mkdir("#{top}/one")
  FileUtils.mkdir("#{top}/two")
  FileUtils.touch("#{top}/three.txt")
  top
end

describe Puppet::Type.type(:i18ndemo_type).provider(:ruby) do
  let(:dir) { tmpdirfactory }
  let(:name) { 'example' }
  let(:resource) { Puppet::Type.type(:i18ndemo_type).new(ensure: 'present', name: name, dir: dir) }
  let(:provider) { resource.provider }

  after(:each) { FileUtils.rm_rf dir }

  it 'is expected to write to a file' do
    provider.create
    expect(File.read("#{dir}/list")).not_to be nil
  end

  it 'is expected to write content to a file' do
    provider.create
    expect(File.read("#{dir}/list")).to match %r{one\nthree.txt\ntwo}
  end
end
