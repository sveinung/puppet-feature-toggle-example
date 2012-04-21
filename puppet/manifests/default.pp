group { 'puppet':
  ensure => present,
}

Package {
  ensure => present,
}

package { 'sinatra':
  provider => "gem",
}

package { 'g++': }

package { 'sinatra-contrib':
  provider => "gem",
  require  => Package['g++'],
}

package { 'haml':
  provider => "gem",
}
