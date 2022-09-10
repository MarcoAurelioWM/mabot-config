#!/bin/bash
cd /data/project/mabot/scripts
# Meta-Wiki
python3 redirect.py do -namespace:not:2,3 -family:meta -lang:meta -always
python3 redirect.py br -namespace:not:2,3 -family:meta -lang:meta -delete -always
# Wikispecies
python3 redirect.py do -family:species -lang:species -always
# Spanish Wikipedia
python3 redirect.py do -namespace:not:2,3 -family:wikipedia -lang:es -always
python3 redirect.py br -namespace:not:2,3 -family:wikipedia -sdtemplate:"{{RobotDestruir|1=|2=R1}}" -lang:es -delete -always
# Spanish Wikibooks
python3 redirect.py br -family:wikibooks -lang:es -delete -always
# Spanish Wikiquote
python3 redirect.py do -family:wikiquote -lang:es -always
python3 redirect.py br -family:wikiquote -lang:es -delete -sdtemplate:"{{destruir|1=Bot: redirección rota|bot=sí}}" -always
# Spanish Wikinews
python3 redirect.py do -family:wikinews -lang:es -always
python3 redirect.py br -family:wikinews -lang:es -delete -always
# Spanish Wikisource
python3 redirect.py do -family:wikisource -lang:es -always
python3 redirect.py br -family:wikisource -lang:es -delete -always
# Spanish Wikiversity
python3 redirect.py do -namespace:not:2,3 -family:wikiversity -lang:es -always
python3 redirect.py br -namespace:not:2,3 -family:wikiversity -lang:es -delete -sdtemplate:"{{destruir|1=Bot: redirección rota}}" -always
# Spanish Wikivoyage
python3 redirect.py do -family:wikivoyage -lang:es -always
python3 redirect.py br -family:wikivoyage -lang:es -delete -always
# Aragonese Wikipedia
python3 redirect.py do -namespace:not:2,3 -family:wikipedia -lang:an -always
python3 redirect.py br -namespace:not:2,3 -family:wikipedia -lang:an -delete -always
# Aragonese Wiktionary
python3 redirect.py do -namespace:not:2,3 -family:wiktionary -lang:an -always
python3 redirect.py br -namespace:not:2,3 -family:wiktionary -lang:an -delete -always
# Asturian Wikipedia (DR only)
python3 redirect.py do -family:wikipedia -lang:ast -always
# Basque Wikipedia
python3 redirect.py do -family:wikipedia -lang:eu -always
python3 redirect.py br -family:wikipedia -lang:eu -delete -always
# Galician Wiktionary (DR for now)
python3 redirect.py do -family:wiktionary -lang:gl -always  
# Old-English Wikipedia
python3 redirect.py do -family:wikipedia -lang:ang -always
python3 redirect.py br -family:wikipedia -lang:ang -delete -always
# Basque Wikibooks
python3 redirect.py do -family:wikibooks -lang:eu -always
python3 redirect.py br -family:wikibooks -lang:eu -delete -always
# Basque Wikiquote
python3 redirect.py do -namespace:not:2,3 -family:wikiquote -lang:eu -always
python3 redirect.py br -namespace:not:2,3 -family:wikiquote -lang:eu -delete -always
# Galician Wikiquote
python3 redirect.py do -family:wikiquote -lang:gl -always
python3 redirect.py br -family:wikiquote -lang:gl -delete -always
# Galician Wikibooks
python3 redirect.py do -family:wikibooks -lang:gl -always
python3 redirect.py br -family:wikibooks -lang:gl -delete -always
# Asturian Wiktionary
python3 redirect.py do -family:wiktionary -lang:ast -always
python3 redirect.py br -family:wiktionary -lang:ast -delete -always
# Scots Wikipedia (DR-only for now)
python3 redirect.py do -family:wikipedia -lang:sco -always
