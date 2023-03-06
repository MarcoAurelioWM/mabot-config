#!/bin/bash

command=(
	"$HOME/pwbvenv/bin/python3"
	"$HOME/pywikibot-core/pwb.py"
	"clean_sandbox"
	)

echo -e "Sandbox clearing script started at $(date)."
printf '%50s\n' | tr ' ' -
echo -e "** Meta-Wiki **"
${command[*]} -pageid:10957461 -site:meta -delay:15 -summary:"Bot: clearing the sandbox"
echo -e "** Spanish Wikibooks **"
${command[*]} -pageid:37341 -site:wikibooks:es -delay:15 -summary:"Bot: limpieza automática de la zona de pruebas"
echo -e "** Spanish Wikinews **"
${command[*]} -pageid:13709 -site:wikinews:es -delay:15 -summary:"Bot: limpieza automática de la zona de pruebas"
echo -e "** Spanish Wikiquote **"
${command[*]} -pageid:40294 -site:wikiquote:es -delay:15 -summary:"Bot: limpieza automática de la zona de pruebas"
echo -e "** Spanish Wikisource **"
${command[*]} -pageid:129470,166832,129475,129476,129477 -site:wikisource:es -delay:15 -summary:"Bot: limpieza automática de la zona de pruebas"
echo -e "** Spanish Wikiversity **"
${command[*]} -pageid:5856 -site:wikiversity:es -delay:15 -summary:"Bot: limpieza automática de la zona de pruebas"
echo -e "** Spanish Wikivoyage **"
${command[*]} -pageid:1805,1806,1807,1808,1809,1814,1813,1812,1811,1810 -site:wikivoyage:es -delay:15 -summary:"Bot: limpieza automática de la zona de pruebas"
echo -e "** Spanish Wiktionary **"
${command[*]} -pageid:9605,89066 -site:wiktionary:es -delay:15 -summary:"Bot: limpieza automática de la zona de pruebas"
echo -e "\nSandbox clearing script finished at $(date)."
