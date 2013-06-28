# Common Files
class common::files {
  files { '/etc/issue':
    ensure  => 'present',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    backup  => true,
    content => template('common/etc/issue.erb');
  }
    
  files { '/etc/motd':
    ensure  => 'present',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    backup  => true,
    content => template('common/etc/motd.erb');
  }
}
