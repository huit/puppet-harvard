# Parameters
class common::params {
  $proxyserver = undef
  $proxy_port  = undef

  case $::operatingsystem {
    'Amazon': {
      $emacs = 'xemacs-nox'
    }
    'RedHat','CentOS': {
      $emacs = 'emacs-nox'
    }
    default: {
      fail("$::operatingsystem is not supported")
    }
  }
}
