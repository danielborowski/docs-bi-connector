#!/bin/sh
#repoDir=$(pwd)
#snooty build $pwd || exit 0
#npm run build

export GATSBY_SITE="cloud"
export PARSER_USER="sophstad"
export PARSER_BRANCH="master"

repoDir=$(pwd)
cd ..
rootDir=$(pwd)
snootyDir=$rootDir/snooty

cp -r $snootyDir $repoDir
cd $repoDir/snooty
npm run build
echo "------"
ls
echo "------"
cp $repoDir/snooty/.env.production $repoDir
cp $repoDir/snooty/Makefile $repoDir


#GIT_BRANCH=blabla
#mkdir -p $repoDir/build/$GIT_BRANCH/html
#cp -r $repoDir/snooty/public $repoDir/build/$GIT_BRANCH/html