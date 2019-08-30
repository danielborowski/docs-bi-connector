#!/bin/sh
pwd=$(pwd)
cd ../
ls
~/.local/bin/snooty build $pwd
#ls
#npm run build