# Common Files
class harvard::skin () inherits harvard::params {
  file { '/etc/issue':
    ensure  => 'present',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    backup  => true,
    content => template('harvard/etc/issue.erb'),
  }

  file { '/etc/motd':
    ensure  => 'present',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    backup  => true,
    content => template('harvard/etc/motd.erb'),
  }
}
