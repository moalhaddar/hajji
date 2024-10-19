BASEDIR=$(dirname "$(readlink -f $0)")
SCRIPT_FILE="$BASEDIR/emoji.sh"
gnome-terminal -t "👴 Hajji" --maximize -- $SHELL -c "$SHELL $SCRIPT_FILE"