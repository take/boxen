# Inital Setup

## Install xcode command line tool

```sh
$ xcode-select --install
```

## Create directory and clone this repo

```sh
$ mkdir src/
$ cd src/
$ git clone https://github.com/take/boxen.git
```

# Installation

```
$ cd /path/to/boxen
$ script/boxen --no-fde
```

`--no-fde` will disable hard drive encrypt

# Things which needs to be manually done

## iTerm2

- Importing colorscheme(base16 eighties isn't added in https://github.com/boxen/puppet-iterm2#colors)
- Set report terminal type to "xterm-256color"

-> Both might be completed by copiying the plist file.
   (ref: https://github.com/krohrbaugh/my-boxen/commit/e8e97482ee9c10d2d7553632625f77c00a080475)

## Miscellaneous

- Enabling dragging(which can be configured in the Accessibility window in System Preferences)
- Disable Guest User(wait for boxen/puppet-osx/#12 I guess..?)
- Settings for keyboard input sources(use google IME)
