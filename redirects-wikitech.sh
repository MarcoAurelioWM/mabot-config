#!/bin/bash
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py redirect do -family:wikitech -lang:en -always
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py redirect br -family:wikitech -lang:en -delete -always -sdtemplate:"{{delete|reason=Bot: broken redirect}}"
