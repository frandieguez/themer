#!/bin/sh

DIR=`dirname $(readlink -f $0)`

# Displays the command help
function help() {
    if [ "$*" != "" ] ; then
        echo "themer: $*"
        echo "";
    fi

cat << EOF
Usage: themer.sh [OPTION] THEME

Change the current wallpaper and themes for polybar, rofi, termite, tmux and vim

  -h, --help    Display this help and exit
  -l, --list    Display the list of available themes
EOF

    exit 0;
}

# Displays a list of available themes
function list() {
    echo "Available themes:"

    ls -la $DIR/themes | \
        grep "^d" | \
        sed -e "s/\s\+/ /g" | \
        cut -d ' ' -f 9 | \
        grep "^[^.]" | \
        sed "s/^/    /g"

    exit 0
}

# Changes the current theme
function main() {
    LAST=`cat $DIR/last.theme`

    while [[ $# -gt 0 ]]; do
        case "$1" in
            -h | --help ) help ;;

            -l | --list ) list ;;

            -*)           help "Unknown option '$1'" ;;
            * )           THEME=$1 ;;
        esac

        shift;
    done

    # Apply last used theme
    if [[ ! $THEME ]] && [[  $LAST ]]; then
        THEME=$LAST
    fi

    # No theme to apply
    if [[ ! $THEME ]] || [[ ! -d $DIR/themes/$THEME ]]; then
        echo -e "\E[31;5merror: unknown theme\033[0m"
        help
        exit -1
    fi

    echo $THEME > $DIR/last.theme

    echo "Applying $THEME theme..."

    updateBspwm     $THEME
    updateMutt      $THEME
    updatePolybar   $THEME
    updateRofi      $THEME
    updateTermite   $THEME
    updateTmux      $THEME
    updateWallpaper $THEME
}

function updateBspwm() {
    if [[ ! `type bspwm` ]] || [[ ! -f $DIR/themes/$1/bspwm/config ]]; then
        return
    fi

    echo -en "  Changing bspwm theme..."
    cp $DIR/themes/$1/bspwm/config $HOME/.config/bspwm/theme
    source $DIR/themes/$1/bspwm/config
    echo -e "\E[37;32mDONE\033[0m"
}

# Changes mutt theme
function updateMutt() {
    if [[ ! `type mutt` ]] || [[ ! -f $DIR/themes/$1/mutt/config ]]; then
        return
    fi

    echo -en "  Changing mutt theme..."

    sed $HOME/.muttrc -i -e "/^color.*$/d"
    cat $DIR/themes/$1/mutt/config >> $HOME/.muttrc

    echo -e "\E[37;32mDONE\033[0m"
}

# Changes the polybar theme
function updatePolybar() {
    if [[ ! `type polybar` ]] || [[ ! -f $DIR/themes/$1/polybar/config ]]; then
        return
    fi

    BAR=`cat /tmp/bar`

    echo -en "  Changing polybar theme..."

    cp $DIR/themes/$1/polybar/config $HOME/.config/polybar/config

    killall polybar > /dev/null 2>&1
    polybar $BAR > /tmp/polybar.log 2>&1 &

    echo -e "\E[37;32mDONE\033[0m"
}

# Changes the rofi theme
function updateRofi() {
    if [[ ! `type rofi` ]] || [[ ! -f $DIR/themes/$1/rofi/config ]]; then
        return
    fi

    echo -en "  Changing rofi theme..."
    cp $DIR/themes/$1/rofi/config $HOME/.config/rofi/config
    echo -e "\E[37;32mDONE\033[0m"
}

# Changes the termite theme
function updateTermite() {
    if [[ ! `type termite` ]] || [[ ! -f $DIR/themes/$1/termite/config ]]; then
        return
    fi

    echo -en "  Changing termite theme..."
    cp $DIR/themes/$1/termite/config $HOME/.config/termite/config
    xdotool key 'ctrl+shift+r'
    echo -e "\E[37;32mDONE\033[0m"
}

# Changes the tmux theme
function updateTmux() {
    if [[ ! `type tmux` ]] || [[ ! -f $DIR/themes/$THEME/tmux/theme.conf ]]; then
        return
    fi

    echo -en "  Changing tmux theme..."
    cp $DIR/themes/$THEME/tmux/theme.conf  $HOME/.tmux/theme.conf

    if [[ `ps aux | grep tmux | tail -n +2` ]]; then
        tmux source-file $HOME/.tmux/theme.conf
    fi

    echo -e "\E[37;32mDONE\033[0m"
}

# Changes the vim theme
function updateVim() {
    if [[ ! `type vim` ]] ; then
        return
    fi

    if [[ -f $DIR/themes/$1/vim/colorscheme.vim ]]; then
        echo -en "  Changing vim theme..."

        cp $DIR/themes/$1/vim/colorscheme.vim $HOME/.vim/colors/$1.vim
        sed -i -e "s/^colorscheme\s\+.*$/colorscheme $1/g" $HOME/.vimrc

        echo -e "\E[37;32mDONE\033[0m"
    fi

    if [[ -f $DIR/themes/$1/vim/lightline.vim ]]; then
        echo -en "Changing vim lightline theme..."

        cp $DIR/themes/$1/vim/lightline.vim $HOME/.vim/autoload/lightline/colorscheme/$1.vim
        sed -i -e "s/'colorscheme': '.*',/'colorscheme': '$1',/g" $HOME/.vimrc

        echo -e "\E[37;32mDONE\033[0m"
    fi
}

# Changes the current wallpaper
function updateWallpaper() {
    if [[ ! -d $DIR/themes/$1/wallpaper  ]] || [[ ! `ls $DIR/themes/$1/wallpaper | grep ".*\.\(png\|jpg\)"` ]]; then
        return
    fi

    echo -en "  Changing wallpaper..."

    WALLPAPER=`ls $DIR/themes/$1/wallpaper | grep ".*\.\(png\|jpg\)"`
    feh --bg-scale $DIR/themes/$1/wallpaper/$WALLPAPER &

    echo -e "\E[37;32mDONE\033[0m"
}

main "$@"
