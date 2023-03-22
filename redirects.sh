#!/bin/bash

command=(
	"$HOME/pwbvenv/bin/python3"
	"$HOME/pywikibot-core/pwb.py"
	"redirect"
	)

printf '%60s\n' | tr ' ' -
echo -e "Starting redirect maintenance module at $(date)."
printf '%60s\n' | tr ' ' -

# Meta-Wiki (BR only)
${command[*]} br -namespace:not:2,3 -site:meta -delete -always -sdtemplate:"{{delete|1=[[WM:CSD#M2|M2]]: Broken redirect (bot)}}"

# Wikispecies (DR only)
${command[*]} do -namespace:not:2,3 -site:species -always

# Spanish Wikipedia
${command[*]} do -namespace:not:2,3 -family:wikipedia -lang:es -always
${command[*]} br -namespace:not:2,3 -family:wikipedia -sdtemplate:"{{RobotDestruir|1=|2=R1}}" -lang:es -delete -always

# Spanish Wikibooks
${command[*]} do -namespace:not:2,3 -family:wikibooks -lang:es -always
${command[*]} br -namespace:not:2,3 -family:wikibooks -lang:es -delete -sdtemplate:"{{destruir|1=Bot: redirección rota}}" -always

# Spanish Wikiquote
${command[*]} do -namespace:not:2,3 -family:wikiquote -lang:es -always
${command[*]} br -namespace:not:2,3 -family:wikiquote -lang:es -delete -sdtemplate:"{{destruir|1=Bot: redirección rota|bot=sí}}" -always

# Spanish Wikinews
${command[*]} do -namespace:not:2,3 -family:wikinews -lang:es -always
${command[*]} br -namespace:not:2,3 -family:wikinews -lang:es -delete -sdtemplate:"{{destruir|1=Bot: redirección rota}}" -always

# Spanish Wikisource
${command[*]} do -namespace:not:2,3 -family:wikisource -lang:es -always
${command[*]} br -namespace:not:2,3 -family:wikisource -lang:es -delete -sdtemplate:"{{destruir|1=Bot: redirección rota}}" -always

# Spanish Wikiversity
${command[*]} do -namespace:not:2,3 -family:wikiversity -lang:es -always
${command[*]} br -namespace:not:2,3 -family:wikiversity -lang:es -delete -sdtemplate:"{{destruir|1=Bot: redirección rota}}" -always

# Spanish Wikivoyage
${command[*]} do -namespace:not:2,3 -family:wikivoyage -lang:es -always
${command[*]} br -namespace:not:2,3 -family:wikivoyage -lang:es -delete -sdtemplate:"{{destruir|1=Bot: redirección rota}}" -always

printf '%60s\n' | tr ' ' -
echo -e "Redirect maintenance module finished at $(date)."
printf '%60s\n' | tr ' ' -
