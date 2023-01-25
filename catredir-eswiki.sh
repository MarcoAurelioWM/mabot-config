#!/bin/bash
echo -e "Starting category redirect script for eswiki at $(date)."
printf '%60s\n' | tr ' ' -
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py category_redirect -family:wikipedia -lang:es
