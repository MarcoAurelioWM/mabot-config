#!/bin/bash
pwb='$HOME/pwbvenv/bin/pwb'
echo -e "Running archivebot module for wikitech.wikimedia.org on $(date)."
printf '%20s\n' | tr ' ' -
$pwb archivebot User:MABot/config -family:wikitech -lang:en
echo -e "Finished at $(date)."
printf '%20s\n' | tr ' ' -
