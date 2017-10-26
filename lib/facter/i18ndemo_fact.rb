Facter.add('i18ndemo_fact') do
  setcode do
    opensslv = Facter::Util::Resolution.exec('openssl version')
    raise _('i18ndemo_fact: this is a raise from a custom fact from eputnam-i18ndemo') if opensslv
  end
end
