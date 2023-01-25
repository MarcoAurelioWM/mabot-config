#!/bin/bash
py3="$HOME/pwbvenv/bin/python3"
pwb="$HOME/pywikibot-core/pwb.py"
echo -e "Deleting of Pywikibot API cache data located at '$HOME/apicache-py3' at $(date)."
printf '%20s\n' | tr ' ' -
$py3 $pwb cache -delete $HOME/apicache-py3
echo -e "Deletion complete: $(date)"
printf '%20s\n' | tr ' ' -
