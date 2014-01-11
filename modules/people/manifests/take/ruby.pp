class people::take::ruby {
  $version = '2.1.0'

  ruby::version { '2.0.0-p353': }
  class { 'ruby::global':
    version => $version
  }

  ruby::gem { "tmuxinator for ${version}":
    gem     => 'tmuxinator',
    ruby    => $version,
  }
  ruby::gem { "zeus for ${version}":
    gem     => 'zeus',
    ruby    => $version,
  }
  ruby::gem { "pry for ${version}":
    gem     => 'pry',
    ruby    => $version,
  }
  ruby::gem { "watson for ${version}":
    gem     => 'watson',
    ruby    => $version,
  }
}
