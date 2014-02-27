# Common Files
class harvard::files () inherits harvard::params{
  # By Default don't backup log directories
  file { '/var/.nsr':
    content => "+skip:log\n",
    mode    => '0400',
  }
  file { '/etc/profile.d/harvard.sh':
    ensure  => 'present',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    backup  => true,
    content => template('harvard/etc/profile.d/harvard.sh.erb'),
  }
}
