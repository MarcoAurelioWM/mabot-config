#!/bin/bash

array=(
	"$HOME/pwbvenv/bin/python3"
	"$HOME/pywikibot-core/pwb.py"
	"archivebot"
	"User:MABot/config"
	)

echo -e "Starting archiver bot module at $(date)"
printf '%40s\n' | tr ' ' -
echo -e "** Wikispecies **"
printf '%40s\n' | tr ' ' -
${array[*]} -family:species -lang:species
printf '%40s\n' | tr ' ' -
echo -e "** Wikibooks **"
printf '%40s\n' | tr ' ' -
${array[*]} -family:wikibooks -lang:es
${array[*]} -family:wikibooks -lang:eu
${array[*]} -family:wikibooks -lang:gl
printf '%40s\n' | tr ' ' -
echo -e "** Wikinews **"
printf '%40s\n' | tr ' ' -
${array[*]} -family:wikinews -lang:es
printf '%40s\n' | tr ' ' -
echo -e "** Wikipedias **"
printf '%40s\n' | tr ' ' -
${array[*]} -family:wikipedia -lang:an
${array[*]} -family:wikipedia -lang:ang
${array[*]} -family:wikipedia -lang:es
${array[*]} -family:wikipedia -lang:eu
${array[*]} -family:wikipedia -lang:sco
${array[*]} -family:wikipedia -lang:tcy
printf '%40s\n' | tr ' ' -
echo -e "** Wikiquotes **"
printf '%40s\n' | tr ' ' -
${array[*]} -family:wikiquote -lang:en
${array[*]} -family:wikiquote -lang:es
${array[*]} -family:wikiquote -lang:eu
${array[*]} -family:wikiquote -lang:gl
printf '%40s\n' | tr ' ' -
echo -e "** Wikisource **"
printf '%40s\n' | tr ' ' -
${array[*]} -family:wikisource -lang:es
printf '%40s\n' | tr ' ' -
echo -e "** Wikivoyage **"
printf '%40s\n' | tr ' ' -
${array[*]} -family:wikivoyage -lang:es
printf '%40s\n' | tr ' ' -
echo -e "** Wiktionaries **"
printf '%40s\n' | tr ' ' -
${array[*]} -family:wiktionary -lang:an
${array[*]} -family:wiktionary -lang:ast
${array[*]} -family:wiktionary -lang:es
${array[*]} -family:wiktionary -lang:gl
printf '%40s\n' | tr ' ' -
echo -e "Archiver bot module finished at $(date)"
printf '%20s\n' | tr ' ' -
