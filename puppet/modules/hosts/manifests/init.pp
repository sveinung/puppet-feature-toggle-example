class hosts {
  file { '/etc/hosts':
    ensure => file,
    mode   => 644,
    group  => 0,
    owner  => 0,
    source => 'puppet:///modules/hosts/hosts',
  }
}
