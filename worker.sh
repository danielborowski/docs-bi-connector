#!/bin/sh
#repoDir=$(pwd)
#snooty build $pwd || exit 0
#npm run build

GIT_BRANCH=blabla

repoDir=$(pwd)
cd ..
snootyDir=$(pwd)/snooty
cp -r $snootyDir $repoDir
cd $repoDir
cd snooty
npm run build
echo "------"
ls
echo "------"
mkdir -p $repoDir/build/$GIT_BRANCH/html
cp -r $snootyDir/public $repoDir/build/$GIT_BRANCH/html