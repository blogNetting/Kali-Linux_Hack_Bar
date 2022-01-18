#!/bin/bash

domain=$(cat /home/kali/.config/panels/domain_target)

 
if [ $domain ]; then
    echo " $domain    "
else
    echo "# No domain    "
fi
