#!/usr/bin/env sh
set -e
NOFORMAT='\033[0m' RED='\033[0;31m' GREEN='\033[0;32m' ORANGE='\033[0;33m' BLUE='\033[0;34m' PURPLE='\033[0;35m' CYAN='\033[0;36m' YELLOW='\033[1;33m'
DOCKER_IMAGE="antaljanosbenjamin/latex-extra:latest"

printf "${CYAN}GENERATING CV.PDF...${NOFORMAT}\n"
docker run -it --rm -v $(pwd):/mnt -w /mnt $DOCKER_IMAGE latexmk cv.tex -pdf

printf "\n${CYAN}GENERATING EXCERPT.PDF...${NOFORMAT}\n"
docker run -it --rm -v $(pwd):/mnt -w /mnt $DOCKER_IMAGE latexmk excerpt.tex -pdf

printf "\n${GREEN}DONE${NOFORMAT}\n"
