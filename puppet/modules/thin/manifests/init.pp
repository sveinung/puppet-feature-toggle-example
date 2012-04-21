define thin(
  $appdir,
  $pidfile,
  $rackupfile,
  $port=8080
) {
  package { 'g++':
    ensure => present,
  }
  package { 'thin':
    ensure   => present,
    provider => 'gem',
    require  => Package['g++'],
  }
  file { "/etc/${name}":
    ensure  => directory,
    require => Package['thin'],
    owner      => root,
    group      => root,
    mode       => 644,
  }
  file { "/etc/thin/config.yml":
    owner      => root,
    group      => root,
    mode       => 644,
    content    => template('thin/config.yml.erb'),
    require    => File["/etc/${name}"],
  }
  #service { 'thin':
  #  ensure  => running,
  #  start   => 'thin -R /vagrant/config.ru -p 8080 start'
  #  stop    => 'thin -R /vagrant/config.ru -p 8080 stop'
  #  restart => 'thin -R /vagrant/config.ru -p 8080 restart'
  #  require => Package['thin'],
  #}
}

