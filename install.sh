#!/bin/bash

cd

mkdir bin
cd bin
git clone git@github.com:john275/scripts.git

cd

ln -s bin/scripts/eyamlkeys.yaml
ln -s bin/scripts/facts.eyaml

cd -

ln -s script\hiddenon
ln -s script\hiddenoff
ln -s script\ums
ln -s script\camera
