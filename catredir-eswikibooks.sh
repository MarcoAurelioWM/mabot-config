#!/bin/bash

echo -e "Starting category redirect script for eswikibooks at $(date)."
printf '%60s\n' | tr ' ' -
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py category_redirect -site:wikibooks:es -always
echo -e "\nCategory redirect maintenance script for eswikibooks finished at $(date)."
