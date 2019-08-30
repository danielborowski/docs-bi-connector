#!/bin/sh
pwd=$(pwd)
cd ../
pwd
ls
/home/docsworker/.local/bin/snooty build $pwd
#ls
#npm run build