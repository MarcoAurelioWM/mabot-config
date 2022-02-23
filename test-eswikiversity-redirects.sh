#!/bin/bash
# Spanish Wikiversity (in trial; 1 edit each 2 minutes)
python redirect.py do -namespace:not:2,3 -family:wikiversity -lang:es -always -pt:120
python redirect.py br -namespace:not:2,3 -family:wikiversity -sdtemplate:"{{Destruir|1=Bot: redirección rota}}" -lang:es -delete -always -pt:120
