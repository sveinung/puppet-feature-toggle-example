$feature_toggle_file = 'toggle_example'

node base {
  import 'default.pp'

  toggle { $feature_toggle_file: }
}

node 'host1.lan' inherits base {
  toggle::fragment { 'one':
    target  => $feature_toggle_file,
    setting => true,
  }

  toggle::fragment { 'two':
    target  => $feature_toggle_file,
    setting => true,
  }
}

node 'host2.lan' inherits base {
  toggle::fragment { 'one':
    target  => $feature_toggle_file,
    setting => true,
  }

  toggle::fragment { 'two':
    target  => $feature_toggle_file,
    setting => false,
  }
}

