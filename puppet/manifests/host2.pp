import 'default.pp'

$feature_toggle_file2 = 'toggle_example'

toggle { $feature_toggle_file2: }

toggle::fragment { 'one':
  target  => $feature_toggle_file2,
  setting => true,
}

toggle::fragment { 'two':
  target  => $feature_toggle_file2,
  setting => false,
}
