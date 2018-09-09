#!/bin/sh
filename="battlecry_`date +%Y%m%d`.zip"
tempdir="package"
pkgroot="$tempdir/battlecry-0.2cvs"
./compile.sh
mkdir $tempdir
mkdir $pkgroot
mkdir $pkgroot/data
mkdir $pkgroot/data/modules
mkdir $pkgroot/data/images
mkdir $pkgroot/data/temp
mkdir $pkgroot/src
mkdir $pkgroot/src/bcry
cp battlecry.* *.html *.txt $pkgroot
cp data/modules/battlecry.bcm $pkgroot/data/modules
cp data/images/*.jpg $pkgroot/data/images
cp data/cmudict.0.6-2-bcry $pkgroot/data
cp data/bcDemoModule.template $pkgroot/data
cp src/bcry/*.java $pkgroot/src/bcry
cd $tempdir
zip -r ../$filename *
cd ..
rm -rf $tempdir
