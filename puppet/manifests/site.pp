$feature_toggle_file = 'toggle_example'

node base {
  import 'default.pp'

  config { $feature_toggle_file: }
}

node 'host1.lan' inherits base {
  config::toggle { 'one':
    target  => $feature_toggle_file,
    setting => true,
  }

  config::toggle { 'two':
    target  => $feature_toggle_file,
    setting => true,
  }
}

node 'host2.lan' inherits base {
  config::toggle { 'one':
    target  => $feature_toggle_file,
    setting => true,
  }

  config::toggle { 'two':
    target  => $feature_toggle_file,
    setting => false,
  }
}

