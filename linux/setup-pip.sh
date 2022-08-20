sudo apt-get update
sudo apt-get install -y python3-pip python3.8-venv python-is-python3

pip3 --version

curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -

source $HOME/.poetry/env

echo "source \$HOME/.poetry/env" >> $HOME/.bashrc

poetry --version

echo "alias python='python3'" >> $HOME/.bash_aliases

sudo apt-get install -y python3-pytest

echo "alias pytest='pytest-3'" >> $HOME/.bash_aliases

source $HOME/.bashrc

pytest --version

