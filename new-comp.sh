# !bin/bash
# This script is used to change the default location of your screenshots 
# to either a new folder, User > Pictures > screenshots, or in a custom path

clear
read -p "Do you want your screenshots stored in a folder in the Pictures folder? y/n: " store_in_pics

if [ $store_in_pics == 'y' ]
then 
    cd 
    cd Pictures
    mkdir screenshots
    cd screenshots
    file_loc=$PWD
else 
    read -p "Drop the location of the new screenshot folder here or type n: " file_loc
fi

if [ $store_in_pics != 'n' ]
then 
    echo $file_loc
    defaults write com.apple.screencapture location file_loc
    killall SystemUIServer
    echo "Your screenshots will now be saved"
else
    echo "Script killed"
fi
echo ""