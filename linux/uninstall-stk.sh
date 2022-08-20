if [ ! -e /etc/sudoers.d/$USER  ]; then
    echo "ERROR current user doesn't have permission to perform this command"    
else
    echo "y" | sudo -S dpkg --purge stkcli
fi