#!/bin/bash

command=(
	"$HOME/pwbvenv/bin/python3"
	"$HOME/pywikibot-core/pwb.py"
	"clean_sandbox"
	)

echo -e "Sandbox clearing script started at $(date)."
printf '%50s\n' | tr ' ' -
${command[*]} -pageid:10957461 -text:"{{Meta:Sandbox/Please do not edit this line}}'\n'<!-- Please edit below this line -->" -family:meta -lang:meta -delay:15 -summary:"Bot: clearing the sandbox"
${command[*]} -pageid:37341 -text:"{{ZDP}}'\n'== Las pruebas bajo esta sección ==" -family:wikibooks -lang:es -delay:15 -summary:"Bot: limpieza automática de la zona de pruebas"
${command[*]} -pageid:13709 -text:"{{ZDP}}'\n'== Las pruebas bajo esta sección ==" -family:wikinews -lang:es -delay:15 -summary:"Bot: limpieza automática de la zona de pruebas"
${command[*]} -pageid:40294 -text:"{{ZDP}}'\n'== Las pruebas bajo esta sección ==" -family:wikiquote -lang:es -delay:15 -summary:"Bot: limpieza automática de la zona de pruebas"
${command[*]} -pageid:129470,166832,129475,129476,129477 -text:"<!--No borres este mensaje-->{{Zona de pruebas}}<!--Haz las pruebas debajo. Gracias-->" -family:wikisource -lang:es -delay:15 -summary:"Bot: limpieza automática de la zona de pruebas"
${command[*]} -pageid:5856 -text:"{{/encabezado}}'\n'<!-- REALIZA TUS PRUEBAS DEBAJO DE ESTA LÍNEA -->" -family:wikiversity -lang:es -delay:15 -summary:"Bot: limpieza automática de la zona de pruebas"
${command[*]} -pageid:1805,1806,1807,1808,1809,1814,1813,1812,1811,1810 -family:wikivoyage -lang:es -delay:15 -summary:"Bot: limpieza automática de la zona de pruebas"
${command[*]} -pageid:9605,89066 -text:"<!--No borres este mensaje-->{{Titular-zdp}}<!--Haz las pruebas debajo. Gracias-->" -family:wiktionary -lang:es -delay:15 -summary:"Bot: limpieza automática de la zona de pruebas"
echo -e "\nSandbox clearing script finished at $(date)."
