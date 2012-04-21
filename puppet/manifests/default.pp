group { 'puppet':
  ensure => present,
}

#include gpp
include sinatra

thin { 'feature_toggle_example':
  rackupfile => '/vagrant/config.ru',
  appdir     => '/vagrant/',
  pidfile    => '/etc/thin/server.pid',
}

