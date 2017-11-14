Puppet::Type.type(:i18ndemo_type).provide(:ruby) do
  desc 'Demo provider for demo type i18ndemo_type'
  commands ls: 'ls'

  mk_resource_methods

  def create
    warning(_('Creating i18ndemo_type.'))
    list = ls(resource[:dir])
    unless list.nil?
      File.open("#{resource[:dir]}/list", 'w') do |file|
        file.write(list)
      end
    end
  end

  def destroy
    warning(_('Destroying list.'))
    resource[:ensure] == :absent
    FileUtils.rm("#{resource[:dir]}/list") if File.file? "#{resource[:dir]}/list"
  end

  def exists?
    warning(_('Does i18ndemo_type exist?'))
    resource[:ensure] == :present
  end

  def self.instances
    warning(_('instances warning message from i18ndemo_type'))
    [ new(:name => 'instances_name', :provider => :i18ndemo) ]
  end
end
