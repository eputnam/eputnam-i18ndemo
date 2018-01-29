Facter.add('i18ndemo_fact') do
  setcode do
    raise _('i18ndemo_fact: this is a raise from a custom fact from eputnam-i18ndemo')
  end
end
