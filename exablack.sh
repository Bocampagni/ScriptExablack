#!/bin/bash

cat << EOF


   _____ __  __    _     ____   _         _     ____  _  __
  | ____|\ \/ /   / \   | __ ) | |       / \   / ___|| |/ /
  |  _|   \  /   / _ \  |  _ \ | |      / _ \ | |    | ' / 
  | |___  /  \  / ___ \ | |_) || |___  / ___ \| |___ | . \ 
  |_____|/_/\_\/_/   \_\|____/ |_____|/_/   \_\\____| |_|\_\
                                                            

   Developer kit version 1.0.0

EOF


## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##

sudo apt update &&
sudo apt install snapd &&

## Instalando pacotes snaps ## 
sudo snap install ubuntu-make --classic &&
sudo snap install slack --classic && 
sudo snap install spotify --classic &&
sudo snap install discord &&
sudo snap install code --classic &&
sudo snap install node --classic --channel=8/stable &&
sudo snap install docker &&

## Instalando os ambientes de dev pelo Umake ##

sudo umake ide idea &&

## Instalação de programas externos ## 

cd ~/Downloads/ && wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
sudo dpkg -i *.deb


echo "Finalizado, bem-vindo à Exablack"
