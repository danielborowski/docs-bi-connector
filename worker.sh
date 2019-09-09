#!/bin/sh
#repoDir=$(pwd)
#snooty build $pwd || exit 0
#npm run build

repoDir=$(pwd)
cd ..
rootDir=$(pwd)
snootyDir=$rootDir/snooty

# go into snooty to build
cp -r $snootyDir $repoDir
cd $repoDir/snooty

# create env variable for build
touch .env.production
echo 'GATSBY_SITE=bi-connector' >> .env.production
echo 'PARSER_USER=sophstad' >> .env.production
echo 'PARSER_BRANCH=master' >> .env.production

# begin build
echo "------ SNOOTY CONTENTS ------"
ls
echo "------ BEGIN BUILD ------"
npm run build
echo "------ BUILD OUTPUT ------"
ls

# move files for staging process
cp $repoDir/snooty/Makefile $repoDir
cp $repoDir/snooty/.env.production $repoDir

#GIT_BRANCH=blabla
#mkdir -p $repoDir/build/$GIT_BRANCH/html
#cp -r $repoDir/snooty/public $repoDir/build/$GIT_BRANCH/html