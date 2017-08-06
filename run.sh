#!/bin/bash

set -e


if [[ -z $1 ]] ; then
	exit 1
fi

repo=$1

git clone ${repo} /website
cd /website

cabal install
sh -c "while true ; do sleep 600 && git pull --ff-only origin master; done" &
cabal run site watch

