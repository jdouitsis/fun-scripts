#!/bin/bash
# A fun script to update some repos every 5 seconds

i=3
while [ $i -lt 4 ]
do
    sleep 5
    cd
    cd Documents/GitHub/EasyU-Vue/
    echo "Fetching Vue"
    git fetch
    git pull

    echo "Done vue"
    echo ""

    sleep 5
    cd 
    echo "Fetching Express"
    cd Documents/GitHub/EasyU-Express/
    
    echo "Done express"
    echo ""

done




cd Documents/Config/