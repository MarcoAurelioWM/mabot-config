#!/bin/bash

echo -e "\nStarting category redirect script for metawiki at $(date)."
printf '%60s\n' | tr ' ' -
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py category_redirect -site:meta
echo -e "Script finished at $(date)."
