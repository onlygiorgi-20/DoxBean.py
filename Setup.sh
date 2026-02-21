#!/bin/bash

# Colors for terminal output
GREEN='\033[1;32m'
BLUE='\033[1;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${BLUE}[+] Starting DoxBean Installation...${NC}"
sleep 2

# Updating system packages
echo -e "${YELLOW}[*] Updating system packages...${NC}"
pkg update -y && pkg upgrade -y

# Installing dependencies
echo -e "${YELLOW}[*] Installing Python and Git...${NC}"
pkg install python git -y

# Installing python libraries
echo -e "${YELLOW}[*] Installing requirements (requests)...${NC}"
pip install requests

echo -e "${GREEN}[!] Setup Complete!${NC}"
echo -e "${BLUE}[>] To run the tool, type: python DoxBean.py${NC}"
