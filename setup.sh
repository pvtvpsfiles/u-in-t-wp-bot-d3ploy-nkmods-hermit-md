#!/bin/bash

install_hermit() {
    echo -n "Bot Name: "
    read git_name
    clear

    echo -n "Session ID: "
    read session_id
    clear

    echo -n "Prefix: "
    read bot_prefix

    echo -n "SUDO: "
    read sudo_numbers
    clear

    echo -n "Private or Public: "
    read mode

    git clone https://github.com/A-d-i-t-h-y-a-n/hermit-md "$git_name"
    cd "$git_name"
    npm install

    echo -e "VPS = true\nSESSION_ID = $session_id\nAUTH_FILE = session\nSUDO = $sudo_numbers\nPREFIX = $bot_prefix\nMODE = $mode\nLOG_MSG = true" > config.env
}

echo -n "Do you have session id (y/n): "
read has_session

if [ "$has_session" = "y" ]; then
    install_hermit
else
    echo -e "\e[93mPlease visit. \e[34mhttps://hermit.adithyan.xyz/qr\e[93m Go and take session. Come back\n"
    sleep 10
    echo -n "Did you successfully take session? (y/n): "
    read success_session

    if [ "$success_session" = "n" ]; then
        clear
        exit
    else
        install_hermit
    fi
fi
