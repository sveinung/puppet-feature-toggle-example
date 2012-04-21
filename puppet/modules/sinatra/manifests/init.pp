class sinatra {
  package { 'sinatra':
    ensure   => present,
    provider => 'gem',
  }
}

