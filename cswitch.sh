echo "========= CSWITCH ========="
echo "=== containors"
lxc list

#Cswitch commands
if [$1 == "--install"] then;
    echo "=== installng distro $2 as name $3"
    echo "=== installing"
    lxc launch $2 $3
    echo "=== install complete"
    exit
fi

if [$1 == "--cswitch"] then;
    echo "=== Cwitching $2 to $3"
    echo "=== stoping penguin"
    lxc stop penguin
    echo "=== rename penguin to $2"
    lxc rename penguin $2
    echo "=== rename $3 to penguin"
    lxc rename $3 penguin
    echo "======== Install complete"
    exit
fi
