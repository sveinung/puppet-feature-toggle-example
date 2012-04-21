include hosts

import 'default.pp'

$feature_toggle_file = 'toggle_example'

toggle { $feature_toggle_file: }

toggle::fragment { 'one':
  target  => $feature_toggle_file,
  setting => true,
}

