#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
TSTAMP=`date +%s`
FILENAME=Screenshot-$TSTAMP.png
IMAGEPATH=$DIR/$FILENAME

#no slashes at the end!
REPO=https://tourn.github.io/screenshots

cd $DIR
scrot $IMAGEPATH
git add $IMAGEPATH && git commit -m "$FILENAME" && git push && echo $REPO/$FILENAME | xsel -b

