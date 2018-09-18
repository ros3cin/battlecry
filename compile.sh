#!/bin/sh

cd src
javac -cp ../libs/commons-collections4-4.2.jar:../libs/eclipse-collections-9.2.0.jar:../libs/eclipse-collections-api-9.2.0.jar:. bcry/battlecry.java bcry/battlecryGUI.java bcry/battlecryLive.java
mv bcry/*.class ../bcry
cd ..
./makejar.sh
