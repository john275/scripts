#!/bin/bash

cd

rm -rf bin ${HOME}/eyamlkeys.yaml ${HOME}/facts.eyaml

mkdir bin
cd bin

git clone https://github.com/john275/scripts.git
cd

cat << --end > ${HOME}/eyamlkeys.yaml
---
pkcs7_private_key: '${HOME}/keys/private_key.pkcs7.pem'
pkcs7_public_key: '${HOME}/keys/public_key.pkcs7.pem'
--end

ln -s bin/scripts/facts.eyaml

cd -

ln -s scripts/wolhplocal.py
ln -s scripts/hiddenon
ln -s scripts/hiddenoff
ln -s scripts/ums
ln -s scripts/camera
ln -s scripts/cheryl2
ln -s scripts/movement
ln -s scripts/gpiolog
ln -s scripts/2fa
ln -s scripts/wiki
ln -s scripts/camerapublic
ln -s scripts/sunset
ln -s scripts/sunset sunrise
ln -s scripts/sunset solar_noon
ln -s scripts/sunset civil_twilight_begin
ln -s scripts/sunset civil_twilight_end
ln -s scripts/sunset nautical_twilight_begin
ln -s scripts/sunset nautical_twilight_end
ln -s scripts/sunset astronomical_twilight_begin
ln -s scripts/sunset astronomical_twilight_end
ln -s scripts/send_arp.py
