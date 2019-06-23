#!/bin/bash
cd /data/project/mabot/scripts
python3 clean_sandbox.py -pageid:1805,1806,1807,1808,1809,1814,1813,1812,1811,1810 -family:wikivoyage -lang:es -text:"{{subst:User:MABot/zdp}}" -delay:15 -summary:"Bot: limpieza automática de la zona de pruebas"
python3 clean_sandbox.py -pageid:40294 -family:wikiquote -lang:es -text:"{{subst:User:MABot/zdp}}" -delay:15 -summary:"Bot: limpieza automática de la zona de pruebas"
python3 clean_sandbox.py -pageid:129470,166832,129475,129476,129477 -family:wikisource -lang:es -text:"<!--No borres este mensaje-->{{Zona de pruebas}}<!--Haz las pruebas debajo. Gracias-->" -delay:15 -summary:"Bot: limpieza automática de la zona de pruebas"
python3 clean_sandbox.py -pageid:9605,89066 -family:wiktionary -lang:es -text:"<!--No borres este mensaje-->{{Titular-zdp}}<!--Haz las pruebas debajo. Gracias-->" -delay:15 -summary:"Bot: limpieza automática de la zona de pruebas"
python3 clean_sandbox.py -pageid:10739043 -text:"{{Meta:Sandbox/Please do not edit this line}}<!-- Please edit below this line. -->" -family:meta -lang:meta -delay:15 -summary:"Bot: clearing the sandbox"
