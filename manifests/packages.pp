class common::packages (
  $emacs = $::common::params::emacs
  ){
  package { 'git'         : ensure => present, }
  package { 'vim-enhanced': ensure => present, }
  package { "${emacs}"    : ensure => present, }
}
