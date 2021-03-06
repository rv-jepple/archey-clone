#!/bin/bash
#Script for installing/uninstalling archey-clone

#List of options
echo ""
echo "Please choose an option:"
echo "1. Install archey-clone to /usr/local/bin"
echo "2. Uninstall archey-clone from /usr/local/bin"
echo -n "Option: "
read answer
echo ""

#If statements based on asnwer
if [ $answer == 1 ]
then

   #create directory if it doesn't exist
   if [ ! -d "/usr/local/bin/" ]
   then
      echo "Creating /usr/local/bin/"
      mkdir -pv -m 755 /usr/local/bin/
   fi

   #copy script
   sudo cp archey /usr/local/bin/
   sudo chmod +x /usr/local/bin/archey

   #display message
   tput setaf 2
   echo "Installed Sucessfully"
   tput sgr0

elif [ $answer == 2 ]
then

   #remove script
   sudo rm -f /usr/local/bin/archey

   #display message
   tput setaf 2
   echo "Uninstalled Sucessfully"
   tput sgr0

else
   echo "Command not supported."
   exit
fi

exit
