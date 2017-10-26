# i18ndemo
#
# A description of what this class does
#
# @summary Sample manifest for demoing i18n functionality in Puppet
#
# @example
#   include i18ndemo
class i18ndemo (
  $filename       = '/tmp/i18ndemofile.txt',
  Boolean $param1 = true,
  String $param2  = 'param2',
  $param3         = $i18ndemo::params::param3
) inherits i18ndemo::params {
  validate_absolute_path($filename)
  if $param1 == true {
    warning("Creating ${filename} file")
    file { $filename:
      ensure  => present,
      content => 'some i18n demo content for no reason',
    }
  } else {
    fail("Failed to create ${filename} file.")
  }
}
