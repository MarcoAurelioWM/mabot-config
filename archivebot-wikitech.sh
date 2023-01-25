#!/bin/bash
py3='$HOME/pwbvenv/bin/python3'
pwb='$HOME/pywikibot-core/pwb.py'
echo -e "Starting archivebot module for wikitech.wikimedia.org on $(date)."
printf '%20s\n' | tr ' ' -
$py3 $pwb archivebot User:MABot/config -family:wikitech -lang:en
echo -e "Finished at $(date)."
printf '%20s\n' | tr ' ' -
