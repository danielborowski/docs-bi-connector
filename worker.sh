#!/bin/sh
repoDir=$(pwd)
#snooty build $pwd || exit 0
#npm run build

pwd
ls
echo "------"
cd ..
snootyDir=$(pwd)/snooty
cp $snootyDir $repoDir
cd $repoDir
echo "------"
ls