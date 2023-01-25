#!/bin/bash

arr=("$HOME/pwbvenv/bin/python3" "$HOME/pywikibot-core/pwb.py" "archivebot User:MABot/config")
echo -e "Starting archiver bot module at $(date)"
printf '%40s\n' | tr ' ' -
${arr[*]} -family:species -lang:species

