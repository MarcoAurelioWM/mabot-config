#!/bin/bash

py3="$HOME/pwbvenv/bin/python3"
pwb="$HOME/pywikibot-core/pwb.py"
echo -e "Deleting Pywikibot API cache data from '$HOME/.pywikibot/apicache-py3' at $(date)."
$py3 $pwb cache -delete $HOME/.pywikibot/apicache-py3
echo -e "Deletion complete: $(date)"
printf '%55s\n' | tr ' ' -
