#!/usr/bin/env bash

set -e

# ANSI color codes
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${BLUE}==>${NC} ${GREEN}Updating Homebrew recipes...${NC}"
brew update

echo -e "${BLUE}==>${NC} ${GREEN}Upgrading installed packages and casks...${NC}"
brew upgrade

echo -e "${BLUE}==>${NC} ${GREEN}Cleaning up outdated versions and cache...${NC}"
brew cleanup

echo -e "${BLUE}==>${NC} ${YELLOW}Checking system health with brew doctor...${NC}"
brew doctor || true

echo -e "${GREEN}==> All updates completed successfully!${NC}"
