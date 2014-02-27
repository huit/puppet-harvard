# == Class: harvard
#
# Full description of class harvard here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if it
#   has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should not be used in preference to class parameters  as of
#   Puppet 2.6.)
#
# === Examples
#
#  class { harvard:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ]
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2013
class harvard (
  $shell_tmout = $::harvard::params::shell_tmout,
  $proxyserver = $::harvard::params::proxyserver,
  $proxy_port  = $::harvard::params::proxy_port
  ) inherits harvard::params {
  class { 'harvard::packages': }
  class { 'harvard::files': }
  class { 'harvard::skin': }
}
