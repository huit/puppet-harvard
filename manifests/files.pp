# Common Files
class common::files {
  file { '/etc/issue':
    ensure  => 'present',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    backup  => true,
    content => template('common/etc/issue.erb');
  }
    
  file { '/etc/motd':
    ensure  => 'present',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    backup  => true,
    content => template('common/etc/motd.erb');
  }
}
