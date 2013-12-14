class people::take {
  include people::take::osx_settings
  include people::take::ruby

  # Apps
  include alfred
  include chrome
  include onepassword
  include onepassword::chrome
  include dropbox
  include iterm2::stable
  include github_for_mac
  include keyremap4macbook
  include keyremap4macbook::login_item
  include istatmenus4
  include skype
  include sequel_pro
  include firefox
  include hipchat
  include appcleaner
  include bartender

  # keyremap4macbook configs
  keyremap4macbook::set { 'repeat.wait':
    value => '45'
  }
  keyremap4macbook::set { 'repeat.initial_wait':
    value => '250'
  }
  keyremap4macbook::set { 'option.extra_cursor_optionL_kjhl':
    value => '1'
  }
  keyremap4macbook::remap {
    [
      'jis_optionR2optionR_kana',
      'jis_optionL2optionL_eisuu',
    ]:
  }
  keyremap4macbook::private_xml{ 'private.xml':
    content =>
      "${boxen::config::repodir}/modules/people/manifests/take/private.xml"
  }

  # Open github for mac from CUI
  $user_bin = "/Users/${::luser}/bin"
  file { $user_bin:
    ensure => directory,
  }
  file { "${user_bin}/gha":
    ensure => 'link',
    target => '/Applications/GitHub.app/Contents/MacOS/github_cli',
  }

  # Apps which will be launched in login
  include people::take::login_items

  # Non apps
  include heroku
  include vagrant
  include virtualbox
#  include go
  include zsh
  include ohmyzsh
  include tmux
  include mysql
  include redis
  include mongodb

  # homebrews
  package {
    [
      'reattach-to-user-namespace',
      'direnv',
    ]:
  }
  package { 'macvim':
    ensure          => installed,
    install_options => [
      '--with-cscope',
      '--override-system-vim',
      '--with-lua',
    ];
  }

  package {
    'Kobito':
      source   => 'http://kobito.qiita.com/download/Kobito_v1.8.5.zip',
      provider => compressed_app;
    'GoogleJapaneseInput':
      source   =>
        'http://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg',
      provider => pkgdmg;
  }
}
