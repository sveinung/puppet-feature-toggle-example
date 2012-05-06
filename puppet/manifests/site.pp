$feature_toggle_file = 'toggle_example'

node base {
  import 'default.pp'
  include thin

  thin::app { 'example':
    appdir => '/vagrant',
    port   => 8080,
  }

  config { $feature_toggle_file:
    notify_on_rebuild => Thin::App['example'],
  }
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

