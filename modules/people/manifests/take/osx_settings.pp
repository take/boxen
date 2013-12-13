class people::take::osx_settings {
  boxen::osx_defaults { 'Activating Dock auto-hide':
    user   => $::luser,
    domain => 'com.apple.dock',
    key    => 'autohide',
    type   => 'int',
    value  => 1,
  }

  boxen::osx_defaults { 'Disable natural (touchscreen-style) scrolling':
    user   => $::luser,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.swipescrolldirection',
    type   => 'bool',
    value  => false,
  }
}
