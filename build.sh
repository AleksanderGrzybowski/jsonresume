#! /bin/bash
set -e

FOLDER=jsonresume
IMAGE=jsonresumebuilder

cd docker
docker build -t ${IMAGE} .
cd ..

rm -rf out.pdf 
docker run --rm -v ${PWD}:/${FOLDER} -w /${FOLDER} -ti ${IMAGE} ./node_modules/.bin/phantomjs ./generate.js

echo "File generated"
ls -l out.pdf
