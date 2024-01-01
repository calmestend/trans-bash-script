#!/bin/sh
clear 
echo "▄▄▄█████▓ ██▀███   ▄▄▄       ███▄    █   ██████        ██████  ██░ ██ "
echo "▓  ██▒ ▓▒▓██ ▒ ██▒▒████▄     ██ ▀█   █ ▒██    ▒      ▒██    ▒ ▓██░ ██▒"
echo "▒ ▓██░ ▒░▓██ ░▄█ ▒▒██  ▀█▄  ▓██  ▀█ ██▒░ ▓██▄        ░ ▓██▄   ▒██▀▀██░"
echo "░ ▓██▓ ░ ▒██▀▀█▄  ░██▄▄▄▄██ ▓██▒  ▐▌██▒  ▒   ██▒       ▒   ██▒░▓█ ░██ "
echo "  ▒██▒ ░ ░██▓ ▒██▒ ▓█   ▓██▒▒██░   ▓██░▒██████▒▒ ██▓ ▒██████▒▒░▓█▒░██▓"
echo "  ▒ ░░   ░ ▒▓ ░▒▓░ ▒▒   ▓▒█░░ ▒░   ▒ ▒ ▒ ▒▓▒ ▒ ░ ▒▓▒ ▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒"
echo "    ░      ░▒ ░ ▒░  ▒   ▒▒ ░░ ░░   ░ ▒░░ ░▒  ░ ░ ░▒  ░ ░▒  ░ ░ ▒ ░▒░ ░"
echo "  ░        ░░   ░   ░   ▒      ░   ░ ░ ░  ░  ░   ░   ░  ░  ░   ░  ░░ ░"
echo "            ░           ░  ░         ░       ░    ░        ░   ░  ░  ░"
echo "                                                  ░                   "
echo "                                                                      "

while true; do
	
  echo "Write the input language"
  read inputLanguage
  echo "Write the output language"
  read outputLanguage
  echo "Enter the text you want to translate"
  read text

  clear

  echo "Input language: ${inputLanguage}"
  echo "output language: ${outputLanguage}"
  echo "Text to translate: ${text}"
  echo

  echo "This is correct [y/N]"
  read -r -n 1
  clear
  
  if [[ "$REPLY" =~ ^[Yy]$ ]]; then
    break
  fi

  clear
done

trans ${inputLanguage}:${outputLanguage} "${text}"

sleep infinity
