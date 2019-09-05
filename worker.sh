#!/bin/sh
repoDir=$(pwd)
#snooty build $pwd || exit 0
#npm run build

pwd
ls
echo "------"
cd ..
snootyDir=$(pwd)/snooty
cp -r $snootyDir $repoDir
cd $repoDir
echo "------"
ls
echo "------"
cd snooty 
npm run build