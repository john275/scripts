#!/bin/bash

cd

rm -rf bin

mkdir bin
cd bin

rm -rf scripts
git clone git@github.com:john275/scripts.git

cd

ln -s bin/scripts/eyamlkeys.yaml
ln -s bin/scripts/facts.eyaml

cd -

ln -s scripts/hiddenon
ln -s scripts/hiddenoff
ln -s scripts/ums
ln -s scripts/camera
