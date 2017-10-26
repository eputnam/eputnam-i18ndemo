Facter.add('i18ndemo_fact') do
  setcode do
    fact_var = 'fact'
    # rubocop:disable Style/StringLiterals
    raise _("i18ndemo_%{fact} is a raise from a custom %{fact} from eputnam-i18ndemo") % { fact: fact_var }
  end
end
