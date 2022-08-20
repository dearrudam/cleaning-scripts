sudo apt-get update
sudo apt-get install -y python3-pip python3.8-venv
pip3 --version

curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -

pip install -U pytest

source $HOME/.poetry/env

echo "source \$HOME/.poetry/env" >> $HOME/.bashrc

poetry --version

alias python='python3'