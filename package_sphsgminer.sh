#!/bin/bash

set -e

rm -rf ./output

./build_libcurl.sh

./build_sphsgminer.sh

. ./EDITME_versions.sh

tar -cvzf sphsgminer-$SPHSGMINER_VERSION-osx64.tar.gz -C output .
mkdir -p ./redist
mv sphsgminer-$SPHSGMINER_VERSION-osx64.tar.gz redist/

rm -rf ./output