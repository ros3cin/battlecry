#!/bin/sh
module="../data/modules/$1.bcm"
mkdir temp
cd temp
unzip $module
vi $2.dat
rm -f $module
zip $module *
cd ..
rm -rf temp
