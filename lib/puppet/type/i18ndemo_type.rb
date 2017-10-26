Puppet::Type.newtype(:i18ndemo_type) do
  desc 'Demo custom type for i18ndemo'

  ensurable

  newparam(:name) do
    isnamevar
    validate do |value|
      raise ArgumentError, 'Value %s is not a valid value for i18ndemo_type::name', value unless %r{[a-zA-Z]+} =~ value
      warning('Good value for i18ndemo_type::name')
    end
  end

  newparam(:dir) do
    validate do |value|
      raise ArgumentError, '%s is not a valid directory', value unless %r{^(.+)/([^/]+)$} =~ value
      warning('Yes, this is a directory')
    end

    defaultto '/etc'
  end
end
