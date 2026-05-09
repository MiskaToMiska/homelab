#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}Aktualizacja listy pakietów...${NC}"
sudo apt update

echo -e "${GREEN}Instalacja podstawowych narzędzi...${NC}"
PACKAGES=(
    "ncdu"      # Analiza zajętości dysku
    "htop"      # Monitor zasobów (lepszy niż top)
    "curl"
    "git"
    "vim"       # Edytor tekstu
    "tmux"      # Multiplexer terminala (przydatne przy SSH)
    "firewalld"       # Firewall
    "fastfetch"  # Szpan w terminalu ;)
)

sudo apt install -y "${PACKAGES[@]}"

echo -e "${GREEN}Instalacja zakończona sukcesem!${NC}"
