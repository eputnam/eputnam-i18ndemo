require 'puppet'
require 'puppet/face'

Puppet::Face.define(:i18ndemo, '1.0.0') do
  copyright "Puppet", 2017
  license   "Puppet Enterprise Software License Agreement"

  summary _("I18ndemo module puppet face example.")
  description <<-EOT
    The description for the i18ndemo module for puppet with a face.
  EOT

  action :test_face do
    default
    summary _("Summary of help for the test_face action.")
    when_invoked do |*args|
      Puppet.warning(_("i18ndemo test_face got invoked"))
      true
    end
  end
end