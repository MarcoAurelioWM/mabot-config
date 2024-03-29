#!/bin/bash

array=(
	"$HOME/pwbvenv/bin/python3"
	"$HOME/pywikibot-core/pwb.py"
	"redirect"
	)

printf '%60s\n' | tr ' ' +
echo -e "Maintenance of double and broken redirects for Wikitech started at $(date)."
printf '%60s\n' | tr ' ' +
echo -e "\nTaking care of DoubleRedirects"
printf '%60s\n' | tr ' ' -
${array[*]} do -family:wikitech -lang:en -always
echo -e "\nTaking care of BrokenRedirects"
printf '%60s\n' | tr ' ' -
${array[*]} br -family:wikitech -lang:en -delete -always -sdtemplate:"{{delete|reason=Bot: broken redirect}}"
echo -e "\n**Script finished at $(date)**."
