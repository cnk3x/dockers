#!/bin/sh
p=`pwd`
w=/home
if [[ $p == $HOME/* ]]; then
  w=/home${p#$HOME*}
fi
docker run --rm -it -v $HOME:/home -w $w go /usr/bin/zsh
