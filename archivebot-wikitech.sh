#!/bin/bash

array=(
	"$HOME/pwbvenv/bin/python3"
	"$HOME/pywikibot-core/pwb.py"
	"archivebot"
	"User:MABot/config"
	)

echo -e "Running archivebot module for wikitech.wikimedia.org on $(date)."
printf '%65s\n' | tr ' ' -
${array[*]} -family:wikitech -lang:en
echo -e "\nScript finished at $(date)."
