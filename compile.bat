@echo off
cd src
javac bcry\battlecry.java bcry\battlecryGUI.java bcry\battlecryLive.java
move bcry\*.class ..\bcry
cd ..
makejar
