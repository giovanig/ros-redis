#!/bin/bash

# find /home/wqkhan/Documents/wavelab/renesas-demo/ -name '*.msg' -printf '%h\n' | sort -u

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

RENESAS_REPO="/home/wqkhan/Documents/wavelab/renesas-demo/"

msgs=$(find ${RENESAS_REPO} -name '*.msg' | sort |uniq)

for msg in $msgs; do 
    pathToMsg="$(dirname "$msg")"
    pathToPackage="$(dirname "$pathToMsg")"
    packageName="$(basename "$pathToPackage")"
    echo "$msg"

    DIRECTORY="$SCRIPT_DIR/$packageName"
    if [ ! -d "$DIRECTORY" ]; then
        # Control will enter here if $DIRECTORY doesn't exist.
        mkdir -p "$DIRECTORY"
        echo "making directory $packageName"
    fi

    cp $msg $DIRECTORY

done