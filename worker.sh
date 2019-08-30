#!/bin/sh
pwd=$(pwd)
cd ../
pwd
ls
echo $pwd
echo $PATH
ls /home/docsworker/.local/bin
echo `which snooty`
snooty build $pwd || exit 0
#snooty 
#ls
#npm run build