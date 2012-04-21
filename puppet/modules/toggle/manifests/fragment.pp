define toggle::fragment($target, $setting=false) {

  $fragment_file = "/tmp/${target}.d/${name}"

  file { $fragment_file:
    ensure  => present,
    content => template('toggle/fragment.yml.erb'),
    require => Toggle[$target],
  }

  exec { 'add_fragment':
    command   => "cat ${fragment_file} >> /etc/${target}",
    path      => ['/bin'],
    subscribe => File[$fragment_file],
  }

}
