#!/bin/bash
cd /data/project/mabot/scripts
python3 redirect.py do -family:wikitech -lang:en -always
python3 redirect.py br -family:wikitech -lang:en -delete -always -sdtemplate:"{{delete|reason=Bot: broken redirect}}"
