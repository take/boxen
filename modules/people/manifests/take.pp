class people::take {
  # Apps
  include alfred
  include onepassword
  include dropbox
  include iterm2::stable
  include github_for_mac
  include keyremap4macbook
  include keyremap4macbook::login_item
  include istatmenus4
  include skype
  include sequel_pro
  include chrome
  include firefox
  include hipchat
  include macvim
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
# [todo] - Figure out a way to use something similar to heredoc
#   $private_xml = <<-XML
# <?xml version="1.0"?>
# XML
#   keyremap4macbook::private_xml{ 'private.xml':
#     content => $private_xml
#   }

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

#   package { 'homesick':
#     ensure   => 'installed',
#     provider => 'gem'
#   }
# 
#   $home     = "/Users/${::boxen_user}"
#   $homesick = "${home}/.homesick"
#   
#   file { $homesick:
#     ensure  => directory
#   }
# 
#   $dotfiles = "${my}/dotfiles"
# 
#   repository { $dotfiles:
#     source  => 'take/dotfiles',
#     require => File[$my]
#   }
}
