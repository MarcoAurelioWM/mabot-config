#!/bin/bash
cd /data/project/mabot/scripts
python3 template.py Visitas -family:wikipedia -lang:es -remove -always -summary:"Retirando plantilla según [[Wikipedia:Consultas de borrado/Plantilla:Visitas|consulta de borrado]]"
