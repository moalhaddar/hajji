BASEDIR=$(dirname "$(readlink -f $0)")
OUTPUT=$(cat "$BASEDIR/emojies.txt" | fzf --tiebreak=chunk,begin --print-query --wrap)
QUERY=$(echo "$OUTPUT" | sed -n '1p')
EMOJI=$(echo "$OUTPUT" | sed -n '2p' | cut -d " " -f 1)
echo "$EMOJI" | tr -d "\n" | xclip -selection clipboard && sleep 0.01
echo "Query: $QUERY"
echo "Selected emoji: $EMOJI"

