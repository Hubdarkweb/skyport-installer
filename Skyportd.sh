#!/bin/bash

# Function to display messages
echo_message() {
    echo -e "\033[1;32m$1\033[0m"
}

echo_message "Do you want to install the Skyport Daemon (skyportd) ? (yes/no)
         __                          __      __
   _____/ /____  ______  ____  _____/ /_____/ /
  / ___/ //_/ / / / __ \/ __ \/ ___/ __/ __  / 
 (__  ) ,< / /_/ / /_/ / /_/ / /  / /_/ /_/ /  
/____/_/|_|\__, / .___/\____/_/   \__/\__,_/   
          /____/_/                        /
                /                             "
read answer

if [ "$answer" != "yes" ]; then
    echo_message "Installation aborted."
    exit 0
fi

echo_message "* Installed Node"

# Create directory, clone repository, and install files
cd /etc
git clone https://github.com/DevX-77/skyport-daemon
cd skyport-daemon/ || { echo_message "Failed to change directory to panel"; exit 1; }
clear

echo_message "* Installed Daemon"

# Create directory, clone repository, and install files
vi config.json #:q1
npm install
clear


echo_message "* Use this first { cd skyportd/ }"

echo_message "* Get your Panel's access key from the Skyport panel's config.json file and set it as 'remoteKey'. Do the same for the other way, set your skyportd access key and configure it on the Panel."

echo_message "* You done use this cmd { node . }" 
