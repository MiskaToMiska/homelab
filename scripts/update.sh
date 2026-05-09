#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}Aktualizacja listy pakietów...${NC}"
sudo apt update

echo -e "${GREEN}Instalacja podstawowych narzędzi...${NC}"
PACKAGES=(
    "ncdu"
    "htop"
    "curl"
    "git"
    "vim"
    "tmux"
    "firewalld"
    "fastfetch"
)

sudo apt install -y "${PACKAGES[@]}"

echo -e "${GREEN}Instalacja zakończona sukcesem!${NC}"
