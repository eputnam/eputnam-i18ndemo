# i18ndemo
#
# A description of what this class does
#
# @summary Sample manifest for demoing i18n functionality in Puppet
#
# @example
#   include i18ndemo
class i18ndemo (
  $filename = 'i18ndemofile.txt',
  $param1   = true,
  $param2   = 'param2',
  $param3   = $i18ndemo::params::param3
) inherits i18ndemo::params {
  if $param1 == true {
    warning("Creating ${filename} file")
    file { $filename:
      ensure  => present,
      content => 'some i18n demo content for no reason',
    }
  } else {
    fail("Failed to create ${filename} file")
  }
}
