#!/bin/bash

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
set -e
OLDDIR=$(pwd)

apt depends python3-tk

LIBS="blt
libtcl8.6
libtk8.6
tk8.6-blt2.5"

for lib in $LIBS
do
    sudo apt install -y $lib
done

sudo apt install python3-tk