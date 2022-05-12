#!/bin/bash

_other_installs () {
   if [[ $OTHER_INSTALLS != "None" ]]
   then
    apt install $OTHER_INSTALLS -y
   fi
   }
_externals () {
   if [[ $OTHER_CMD != "None" ]]
   then
      $OTHER_CMD
   fi
   }
    
apt update && apt upgrade -y
apt install git -y
_other_installs
pip3 install -U pip
git clone $REPO_URL Github_Repo
cd Github_Repo
python3 -m bot
