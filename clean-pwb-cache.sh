#!/bin/bash

py3="$HOME/pwbvenv/bin/python3"
pwb="$HOME/pywikibot-core/pwb.py"
echo -e "Deleting Pywikibot API cache data from '$HOME/apicache-py3' at $(date)."
printf '%72s\n' | tr ' ' -
$py3 $pwb cache -delete $HOME/apicache-py3
echo -e "Deletion complete: $(date)"
printf '%27s\n' | tr ' ' -
