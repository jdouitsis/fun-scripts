clear
echo "This script is for modifying specific commands/interactions with the computer"
echo ""


echo "Change commandline to only show working directory?"
read -p "(Requires terminal to restart) y/n : " modify_terminal_line
if [ $modify_terminal_line == 'y' ]
then
    
    
    if cat ~/.bash_profile | grep -q 'PS1="\W'; then 
      echo 'export PS1="\W $ " is already in your bash_profile'
    else 
      echo 'export PS1="\W $ "' >> ~/.bash_profile
      echo 'Your bash profile should have this: export PS1="\W $ "  at the end of its file'
      cat ~/.bash_profile
      echo "Please restart your terminal if you would like to see the changes"
    fi 




fi



echo "End of script"




