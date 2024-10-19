BASEDIR=$(dirname "$0")
SCRIPT=$(cat <<EOF
cat "$BASEDIR/emojies.txt" \
    | fzf --tiebreak=chunk,begin \
    | cut -d " " -f 1 \
    | tr -d "\n" \
    | xclip -selection clipboard && sleep 0.01
EOF
)
gnome-terminal -t "👴 Hajji" --maximize -- $SHELL -c "$SCRIPT"

