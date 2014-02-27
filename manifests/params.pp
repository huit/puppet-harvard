# Default Parameters
class harvard::params {
  $shell_tmout = '10800'
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
      fail("${::operatingsystem} is not supported")
    }
  }
}

