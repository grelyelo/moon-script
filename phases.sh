#!/bin/bash
if [ $# -lt 1 ]; then
    echo 'bad'
    exit 1
fi
AWKSTRING='BEGIN{RS="\t"; FS="#\n"} {print '
INDEX=$1
MOONFILE=$2
AWKSTRING=$AWKSTRING'$'$INDEX'}'
cd ~/.local/bin
awk "$AWKSTRING"  < "$MOONFILE"
