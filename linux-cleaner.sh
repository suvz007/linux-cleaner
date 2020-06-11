#!/bin/bash
echo -e
echo -e
YELLOW="\033[1;33m"
RED="\033[0;31m"
ENDCOLOR="\033[0m"
echo -e $RED"=====================Kali-Cleaner==================================="$ENDCOLOR
echo -e $RED"	         Little cleaner for Kali by SuvZ         	 	 "$ENDCOLOR
echo -e $RED"===================================================================="$ENDCOLOR
echo -e
echo -e
                                                                                                                                                                                                                                         
OLDCONF=$(dpkg -l|grep "^rc"|awk '{print $2}')
YELLOW="\033[1;33m"
RED="\033[0;31m"
ENDCOLOR="\033[0m"
 
if [ $USER != root ]; then
echo -e $RED"[Kali-cleaner]:Error: must be root"
echo -e $YELLOW"[Kali-cleaner]:Exiting..."$ENDCOLOR
exit 0
fi
 
echo -e $YELLOW"[Kali-cleaner]:Cleaning apt cache..."$ENDCOLOR
sudo apt-get autoclean -y
sudo apt-get autoremove -y
 
echo -e $YELLOW"[Kali-cleaner]:Removing old config files..."$ENDCOLOR
sudo apt-get purge $OLDCONF -y
 
echo -e $YELLOW"[Kali-cleaner]:Emptying every trashes..."$ENDCOLOR
rm -rf /home/*/.local/share/Trash/*/** &> /dev/null -y
rm -rf /root/.local/share/Trash/*/** &> /dev/null -y
rm -rf /tmp/* &> /dev/null -y
 
echo -e $YELLOW"[Kali-cleaner]:Script Finished!"$ENDCOLOR
echo -e
echo -e $RED"Goodbye........."$ENDCOLOR
