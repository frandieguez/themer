# Themer

This script helps me to customize my current desktop environment. It is focused on customizing my [bspwm](https://github.com/baskerville/bspwm)+[polybar](https://github.com/jaagr/polybar) based desktop and some terminal applications.

The list of applications I customize with themer (for now) are:

  - [bspwm](https://github.com/baskerville/bspwm)
  - mutt
  - [polybar](https://github.com/jaagr/polybar)
  - [rofi](https://github.com/DaveDavenport/rofi)
  - [termite](https://github.com/thestinger/termite)
  - tmux
  - vim (colorscheme and lightline plugin)

## Installation

1. Clone this repository:

    ```
    git clone https://github.com/dbestevez/themer
    ```

2. (Optional) Add themer directory to your path:

    ```
    export PATH=/path/to/themer:$PATH
    ```

## Usage

To learn how to use themer execute:

```
$ themer -h
Usage: themer [OPTION] THEME
Changes the wallpaper and current theme for bspwm, polybar and more.

Options:
  -h, --help    Display this help and exit
  -l, --list    Display the list of available themes
```
To get the list of available themes execute:

```
$ themer -l
Available themes:
    offline
```

To install a theme execute:

```
$ themer <theme>
```

> Themer will automatically reload configuration for bspwm, polybar, rofi, termite and tmux, no restart required. Vim and mutt have to be restarted to use the installed theme.
