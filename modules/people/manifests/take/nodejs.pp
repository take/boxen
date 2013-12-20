class people::take::nodejs {
  include nodejs::v0_8
  include nodejs::v0_10

  class { 'nodejs::global':
    version => 'v0.8'
  }
}
