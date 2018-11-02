#!/bin/sh
p=`pwd`
localpath=${p%/src/*};
workdir=/go/src/${p#*/src/};

if [[ ${p} == */src/* || ${p} == */src ]]; then
  docker run --rm -it -v ${localpath}:/go -v ${HOME}:/home -w ${workdir} go_dev $*
else
  docker run --rm -it -v ${HOME}:/home -w ${workdir} go_dev $*
fi