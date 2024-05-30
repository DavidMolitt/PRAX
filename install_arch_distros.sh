#!/bin/bash

install_if_not_present() {
    if ! pacman -Qi $1 &>/dev/null; then
        sudo pacman -Sy --noconfirm $1
    else
        echo "$1 alredy installed"
    fi
}

install_if_not_present git
install_if_not_present python
install_if_not_present python-flask
install_if_not_present docker

if ! systemctl is-active --quiet docker; then
    sudo systemctl start docker
    sudo systemctl enable docker
fi

cd
git clone https://github.com/DavidMolitt/PRAX

cd ~/appPY

sudo docker build -t post-microservice .


echo 'alias microservice-post-run="sudo docker run -p 4000:5000 post-microservice"' >> ~/.bashrc

echo pre spustenie restartujete terminal a pouzite microservice-post-run
