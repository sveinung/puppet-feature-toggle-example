define toggle::fragment($target, $setting=false) {
  
  file { "/tmp/${target}.d/${name}":
    ensure  => present,
    content => template('toggle/fragment.yml.erb'),
    require => Toggle[$target],
  }

}
