#!/bin/sh
pwd=$(pwd)
snooty build $pwd || exit 0
#npm run build