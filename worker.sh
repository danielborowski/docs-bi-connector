#!/bin/sh
pwd=$(pwd)
cd ../
pwd
ls
echo $pwd
echo $PATH
ls /home/docsworker/.local/bin
echo `which snooty`
snooty build $pwd
#snooty 
#ls
#npm run build