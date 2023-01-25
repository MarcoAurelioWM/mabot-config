#!/bin/bash
array=("$HOME/pwbvenv/bin/python3" "$HOME/pywikibot-core/pwb.py" "redirect")
echo -e "Maintenance of double and broken redirects for Wikitech started at $(date)."
printf '%20s\n' | tr ' ' +
echo -e "Taking care of DoubleRedirects"
printf '%20s\n' | tr ' ' -
${array[*]} do -family:wikitech -lang:en -always
echo -e "Taking care of BrokenRedirects"
printf '%20s\n' | tr ' ' -
${array[*]} br -family:wikitech -lang:en -delete -always -sdtemplate:"{{delete|reason=Bot: broken redirect}}"
echo -e "Script finished at $(date)."
