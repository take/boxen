boxen
=====

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

- Importing iterm2 colorscheme(base16 eighties isn't added in https://github.com/boxen/puppet-iterm2#colors)
- Enabling dragging(which can be configured in the Accessibility window in System Preferences)
