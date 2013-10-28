# Common Files
class common::files {
  file { '/etc/issue':
    ensure  => 'present',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    backup  => true,
    content => template('common/etc/issue.erb'),
  }

  file { '/etc/motd':
    ensure  => 'present',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    backup  => true,
    content => template('common/etc/motd.erb'),
  }

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
    content => template('common/etc/profile.d/harvard.sh.erb'),
  }
}
