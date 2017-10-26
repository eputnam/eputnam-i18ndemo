Puppet::Type.type(:i18ndemo_type).provide(:ruby) do
  desc 'Demo provider for demo type i18ndemo_type'
  commands ls: 'ls'

  mk_resource_methods

  def create
    warning('Creating i18ndemo_type.')
    list = ls(resource[:dir])
    unless list.nil?
      File.open("#{resource[:dir]}/list", 'w') do |file|
        file.write(list)
      end
    end
  end

  def exists?
    warning('Does i18ndemo_type exist?')
    resource[:ensure] == :present
  end
end
