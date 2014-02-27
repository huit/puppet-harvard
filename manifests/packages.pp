# Packages we expect will be installed on everything
class harvard::packages (
  $emacs = $::harvard::params::emacs
  ){
  if !defined(Package['git']) {
    package { 'git' : ensure => present, }
  }
  if !defined(Package['vim-enhanced']) {
    package { 'vim-enhanced': ensure => present, }
  }
  if !defined(Package[$emacs]) {
    package { "${emacs}" : ensure => present, }
  }
}
