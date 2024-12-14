#!/bin/bash 
#Shebang line that specifies tht this scirpt should be ran with bash

rm ~/.nanorc #removes the .nanorc file from the user's home directory

sed -i '/source ~/.dotfiles/etc/bashrc_custom/d' ~/.bashrc #Deletes the line string 'source ~/.dotfiles/etc/bashrc_custom’ inside the bashrc file, which is inside the home directory, and replaces it with nothing using the sed command.  

rm -r ~/.TRASH #removing the .TRASH directory and its contents recursively from the home directory

