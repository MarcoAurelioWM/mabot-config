#!/bin/bash
pwb="$HOME/pwbvenv/bin/pwb"
echo -e "Starting deletion of Pywikibot API cache data located at '$HOME/apicache-py3' on $(date)"
$pwb cache -delete -v $HOME/apicache-py3
echo -e "Deletion complete: $(date)"
printf '%20s\n' | tr ' ' -
