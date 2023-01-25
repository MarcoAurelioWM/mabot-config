#!/bin/bash

py3="$HOME/pwbvenv/bin/python3"
pwb="$HOME/pywikibot-core/pwb.py"
static="archivebot User:MABot/config"
echo -e "Starting archiver bot module at $(date)"
printf '%20s\n' | tr ' ' +
$py3 $pwb $static -family:species -lang:species
printf '%20s\n' | tr ' ' -
$py3 $pwb $static -family:wikibooks -lang:es
$py3 $pwb $static -family:wikibooks -lang:eu
$py3 $pwb $static -family:wikibooks -lang:gl
printf '%20s\n' | tr ' ' -
$py3 $pwb $static -family:wikinews -lang:es
printf '%20s\n' | tr ' ' -
$py3 $pwb $static -family:wikipedia -lang:an
$py3 $pwb $static -family:wikipedia -lang:ang
$py3 $pwb $static -family:wikipedia -lang:es
$py3 $pwb $static -family:wikipedia -lang:eu
$py3 $pwb $static -family:wikipedia -lang:sco
$py3 $pwb $static -family:wikipedia -lang:tcy
printf '%20s\n' | tr ' ' -
$py3 $pwb $static -family:wikiquote -lang:en
$py3 $pwb $static -family:wikiquote -lang:es
$py3 $pwb $static -family:wikiquote -lang:eu
$py3 $pwb $static -family:wikiquote -lang:gl
printf '%20s\n' | tr ' ' -
$py3 $pwb $static -family:wikisource -lang:es
printf '%20s\n' | tr ' ' -
$py3 $pwb $static -family:wikivoyage -lang:es
printf '%20s\n' | tr ' ' -
$py3 $pwb $static -family:wiktionary -lang:an
$py3 $pwb $static -family:wiktionary -lang:ast
$py3 $pwb $static -family:wiktionary -lang:es
$py3 $pwb $static -family:wiktionary -lang:gl
echo -e "Archiver bot module finished at $(date)"
printf '%20s\n' | tr ' ' +
