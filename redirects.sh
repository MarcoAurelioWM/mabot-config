#!/bin/bash
cd /data/project/mabot/scripts
# Meta-Wiki
python redirect.py do -family:meta -lang:meta -always
python redirect.py br -family:meta -lang:meta -delete -always
# Wikispecies
python redirect.py do -family:species -lang:species -always
# Spanish Wikipedia
python redirect.py do -family:wikipedia -lang:es -always
python redirect.py br -family:wikipedia -sdtemplate:"{{RobotDestruir|1=|2=R1}}" -lang:es -delete -always
# Spanish Wikibooks
python redirect.py do -family:wikibooks -lang:es -always
python redirect.py br -family:wikibooks -lang:es -delete -always
# Spanish Wikiquote
python redirect.py do -family:wikiquote -lang:es -always
python redirect.py br -family:wikiquote -lang:es -delete -always
# Spanish Wikinews
python redirect.py do -family:wikinews -lang:es -always
python redirect.py br -family:wikinews -lang:es -delete -always
# Spanish Wikisource
python redirect.py do -family:wikisource -lang:es -always
python redirect.py br -family:wikisource -lang:es -delete -always
# Aragonese Wikipedia
python redirect.py do -family:wikipedia -lang:an -always
python redirect.py br -family:wikipedia -lang:an -delete -always
# Aragonese Wiktionary
python redirect.py do -family:wiktionary -lang:an -always
python redirect.py br -family:wiktionary -lang:an -delete -always
# Asturian Wikipedia (DR only)
python redirect.py do -family:wikipedia -lang:ast -always
# tcy.wikipedia
python redirect.py do -family:wikipedia -lang:tcy -always
python redirect.py br -family:wikipedia -lang:tcy -delete -always
# Basque Wikipedia
python redirect.py do -family:wikipedia -lang:eu -always
python redirect.py br -family:wikipedia -lang:eu -delete -always
# Livvi-Karelian Wikipedia
python redirect.py do -family:wikipedia -lang:olo -always
python redirect.py br -family:wikipedia -lang:olo -delete -always
# Galician Wiktionary (DR for now)
python redirect.py do -family:wiktionary -lang:gl -always
# Extremaduran Wikipedia
python redirect.py do -family:wikipedia -lang:ext -always
python redirect.py br -family:wikipedia -lang:ext -delete -always
# Catalan Wikibooks
python redirect.py do -family:wikibooks -lang:ca -always
python redirect.py br -family:wikibooks -lang:ca -delete -always
# Old-English Wikipedia
python redirect.py do -family:wikipedia -lang:ang -always
python redirect.py br -family:wikipedia -lang:ang -delete -always
# Basque Wikibooks
python redirect.py do -family:wikibooks -lang:eu -always
python redirect.py br -family:wikibooks -lang:eu -delete -always
# Basque Wikiquote
python redirect.py do -family:wikiquote -lang:eu -always
python redirect.py br -family:wikiquote -lang:eu -delete -always
# Galician Wikiquote
python redirect.py do -family:wikiquote -lang:gl -always
python redirect.py br -family:wikiquote -lang:gl -delete -always
# Galician Wikibooks
python redirect.py do -family:wikibooks -lang:gl -always
python redirect.py br -family:wikibooks -lang:gl -delete -always
# Asturian Wiktionary
python redirect.py do -family:wiktionary -lang:ast -always
python redirect.py br -family:wiktionary -lang:ast -delete -always
# Wikitech
python redirect.py do -family:wikitech -lang:en -always
python redirect.py br -family:wikitech -lang:en -delete -always -sdtemplate:"{{delete|reason=Bot: broken redirect}}"
# Jamaican Patois Wikipedia
python redirect.py do -family:wikipedia -lang:jam -always
python redirect.py br -family:wikipedia -lang:jam -delete -always -sdtemplate:"{{delete|1=Bot: broken redirect}}"
# Wikimania 2018
python redirect.py do -family:wikimania -lang:2018 -always
python redirect.py br -family:wikimania -lang:2018 -delete -always -sdtemplate:"{{delete|1=Bot: broken redirect}}"
