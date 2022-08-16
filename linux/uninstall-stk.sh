if [ ! -e /etc/sudoers.d/$USER  ]; then
    # /etc/sudoers.d/$USER already exists
    echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$USER >> /dev/null
fi

if [ -e /etc/sudoers.d/$USER  ]; then
    echo "y" | sudo -S dpkg --purge stkcli
else
    echo "ERROR current user doesn't have permission to perform this command"
fi