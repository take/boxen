class people::take::login_items {
  osx_login_item { 'Dropbox':
    name => 'Dropbox',
    path => '/Applications/Dropbox.app',
    hidden => true,
    require => Package['Dropbox'],
  }

  osx_login_item { 'Alfred 2':
    name => 'Alfred 2',
    path => '/Applications/Alfred 2.app',
    hidden => true,
    require => Class['alfred'],
  }

  osx_login_item { 'Bartender':
    name => 'Bartender',
    path => '/Applications/Bartender.app',
    hidden => true,
    require => Package['Bartender'],
  }
}
