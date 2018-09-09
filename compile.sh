#!/bin/sh

cd src
javac bcry/battlecry.java bcry/battlecryGUI.java bcry/battlecryLive.java
mv bcry/*.class ../bcry
cd ..
./makejar.sh
