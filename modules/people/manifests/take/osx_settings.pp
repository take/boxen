class people::take::osx_settings {
  boxen::osx_defaults { 'Activating Dock auto-hide':
    user   => $::luser,
    domain => 'com.apple.dock',
    key    => 'autohide',
    type   => 'int',
    value  => 1,
  }
}
