#!/bin/bash
#Shebang that specifies that the script should be run in bash.
#All the outputs to the  echo statements will be appended to a file called linuxsetup.log

if [[ $(uname) = "Linux" ]]; then #if statement to check if the output of the uname command is equal to linux
    echo "OS is Linux. You're good to go." >> ~/linuxsetup.log #Dumps a message that the operating system is linux inside the linuxsetup.log file
else
    echo "Error: Operating System is not Linux. You are not to proceed." >> ~/linuxsetup.log  #Dumping an error that the OS is not linux inside the linuxsetup.log file
    exit 1 #exit the script to indicate an error or failure, which is what the 1 is used for.
fi

if [[ ! -d $HOME/.TRASH ]]; then #Checks whether the .TRASH directory exists inside the home directory.
     echo "Creating the .Trash directory inside the home directory" >> ~/linuxsetup.log  #Lets the user know the .TRASH directory is being created inside the home directory
     mkdir $HOME/.TRASH #Creates the .TRASH directory inside the home directory
else
     echo ".Trash directory already exists inside the home directory." >> ~/linuxsetup.log  #Informs the user that there is already a .Trash  directory inside the home directory
fi

if [[ -f $HOME/.nanorc ]]; then #Checks if the .nanorc file exists inside the home directory
    echo "The file .nanorc's name has been changed to .bup_nanorc." >> ~/linuxsetup.log #Informs the user that the name of the .nanorc file has been changed to .bup_nanorc
    mv $HOME/.nanorc $HOME/.bup_nanorc #renames the .nanorc file to .bup_nanorc inside the home directory
fi

cat /etc/nanorc > $HOME/.nanorc #reads the contents of the nanorc file in the etc directory and then redirects them to a file called .nanorc inside the home directory

echo "source ~/.dotfiles/etc/bashrc_custom" >> $HOME/.bashrc #Adds the statement source, ~/.dotfiles/etc/bashrc_custom, to the end of the .bashrc file inside the home directory.
