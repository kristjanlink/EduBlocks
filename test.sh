#!/bin/bash
epiphany --new-tab  file:///home/pi/blockly/blockly/index.html > /dev/null 2>&1 &

sudo python3 /home/pi/blockly/server.py 



