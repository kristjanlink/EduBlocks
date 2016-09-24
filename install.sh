#!/bin/bash

#Edu_blocks install script
#Les Pounder September 17 2016
#V0.2

#Version History
#0.2 - September 19 2016 -Fixed a bug in Easygui which caused installer to throw an error. Bug not present in edublocks code! https://github.com/robertlugg/easygui/issues/97
#0.1 - September 17 2016 -Initial test, worked well



echo "Downloading Edupy"
sudo pip3 install edupy
echo "Downloading the package"
wget http://edupython.co.uk/blockly.zip
echo "Extracting the package to /home/pi/blockly"
unzip blockly.zip -d /home/pi/blockly
echo "Copying the desktop shortcut to your desktop"
cp /home/pi/blockly/edublocks.desktop /home/pi/Desktop
echo "Updating easygui choice box to fix a bug"
sudo cp /home/pi/blockly/choice_box.py /usr/local/lib/python3.4/dist-packages/easygui/boxes/choice_box.py
sudo cp /usr/local/lib/python3.4/dist-packages/easygui/boxes/choice_box.py /usr/local/lib/python3.4/dist-packages/easygui/boxes/choice_box.py.backup
echo "Chmod"
sudo chmod u+x /home/pi/blockly/test.sh
echo "All done, enjoy hacking with edublocks"



