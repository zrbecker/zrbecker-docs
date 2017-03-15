#!/usr/bin/env bash

# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

export   BLACK='\033[0;30m'
export     RED='\033[0;31m'
export   GREEN='\033[0;32m'
export  ORANGE='\033[0;33m'
export    BLUE='\033[0;34m'
export  PURPLE='\033[0;35m'
export    CYAN='\033[0;36m'
export   LGRAY='\033[0;37m'

export   DGRAY='\033[1;30m'
export    LRED='\033[1;31m'
export  LGREEN='\033[1;32m'
export  YELLOW='\033[1;33m'
export   LBLUE='\033[1;34m'
export LPURPLE='\033[1;35m'
export   LCYAN='\033[1;36m'
export   WHITE='\033[1;37m'

printf "${BLACK}black\n"
printf "${RED}red\n"
printf "${GREEN}green\n"
printf "${ORANGE}orange\n"
printf "${BLUE}blue\n"
printf "${PURPLE}purple\n"
printf "${CYAN}cyan\n"
printf "${LGRAY}light gray\n"

printf "${DGRAY}dark gray\n"
printf "${LRED}light red\n"
printf "${LGREEN}light green\n"
printf "${YELLOW}yellow\n"
printf "${LBLUE}light blue\n"
printf "${LPURPLE}light purple\n"
printf "${LCYAN}light cyan\n"
printf "${WHITE}white\n"

