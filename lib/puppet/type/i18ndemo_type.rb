
Puppet::Type.newtype(:i18ndemo_type) do
  desc 'Demo custom type for i18ndemo'

  ensurable

  newparam(:name) do
    isnamevar
    validate do |value|
      if regex = %r{[a-zA-Z]+}.match(value)
        warning('Good value for i18ndemo_type::name')
      else
        raise ArgumentError, "Value #{value} is not a valid value for i18ndemo_type::name"
      end
    end
  end

  newparam(:dir) do
    validate do |value|
      if %r{^(.+)/([^/]+)$}.match value
        warning('Yes, this is a directory')
      else
        raise ArgumentError, "#{value} is not a valid directory"
      end
    end

    defaultto "/etc"
  end
end
