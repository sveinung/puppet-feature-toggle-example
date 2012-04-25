define toggle::fragment($target, $setting=false) {

  $fragment_file = "/tmp/${target}.d/${name}"

  file { $fragment_file:
    ensure  => present,
    content => template('toggle/fragment.yml.erb'),
    notify  => Exec['rebuild-conf'],
  }
}
