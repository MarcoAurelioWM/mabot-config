#!/bin/bash
cd /data/project/mabot/scripts
python3 template.py Visitas -family:wikipedia -lang:es -remove -always -summary:"Bot: retirando plantilla según lo resuelto en la [[Wikipedia:Consultas de borrado/Plantilla:Visitas|consulta de borrado]]"
