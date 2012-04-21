define toggle {

  File {
    owner => root,
    group => root,
    mode  => 644,
  }

  file { "/tmp/${name}.d/":
    ensure => directory,
  }

  file { "/etc/${name}":
    ensure => file,
    purge  => true,
  }

}

