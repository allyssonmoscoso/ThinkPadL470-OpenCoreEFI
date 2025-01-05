#!/bin/bash

# Settings for AC
sudo pmset -c standby 1
sudo pmset -c hibernatemode 0

# Setting for battery
sudo pmset -b standby 1
sudo pmset -b standbydelayhigh 900
sudo pmset -b standbydelaylow 60
sudo pmset -b hibernatemode 25
sudo pmset -b highstandbythreshold 70

# Settings for all
sudo pmset -a acwake 0
sudo pmset -a lidwake 1
sudo pmset -a powernap 0

echo "Power management settings applied successfully."