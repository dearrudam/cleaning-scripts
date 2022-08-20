if [ ! -e /etc/sudoers.d/$USER  ]; then
    # /etc/sudoers.d/$USER already exists
    echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$USER >> /dev/null
fi

if [ ! -e /etc/sudoers.d/$USER  ]; then
    echo "ERROR current user doesn't have permission to perform this command"
else

    # installing DOTNET runtime
    wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
    echo "y" | sudo -S dpkg -i packages-microsoft-prod.deb
    rm packages-microsoft-prod.deb

    
    sudo apt-get update && \
        sudo apt-get install -y \
            curl \
            git \
            dotnet-sdk-6.0 \
            aspnetcore-runtime-6.0 \
            dotnet-runtime-6.0


    # installing NVM to manage NPM installations
    . ./setup-nvm.sh
    # installing SDKMAN to install JVM distributions
    . ./setup-java.sh

    # installing VSCODE
    # sudo apt-get install wget gpg
    # wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    # sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
    # sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    # rm -f packages.microsoft.gpg
    # sudo apt install apt-transport-https
    # sudo apt update
    # sudo apt install code # or code-insiders
    sudo snap install --classic code # or code-insiders

    # installing Intellij IDEA Community
    sudo snap install intellij-idea-community --classic

    # installing Eclipse
    sudo snap install eclipse --classic

    echo "alias remove-stk='${PWD}/uninstall-stk.sh'" >> $HOME/.bash_aliases && source $HOME/.bash_aliases 

fi