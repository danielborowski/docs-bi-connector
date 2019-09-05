#!/bin/sh
#repoDir=$(pwd)
#snooty build $pwd || exit 0
#npm run build

GIT_BRANCH=blabla

repoDir=$(pwd)
cd ..
snootyDir=$(pwd)/snooty
cp -r $snootyDir $repoDir
cd $repoDir/snooty
#npm run build
mkdir -p $repoDir/public/$GIT_BRANCH/html
cp -r $snootyDir/public $repoDir/build/$GIT_BRANCH/html