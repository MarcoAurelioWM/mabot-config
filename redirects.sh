#!/bin/bash

# Meta-Wiki
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py redirect do -namespace:not:2,3 -family:meta -lang:meta -always
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py redirect br -namespace:not:2,3 -family:meta -lang:meta -delete -always

# Wikispecies
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py redirect do -namespace:not:2,3 -family:species -lang:species -always

# Spanish Wikipedia
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py redirect do -namespace:not:2,3 -family:wikipedia -lang:es -always
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py redirect br -namespace:not:2,3 -family:wikipedia -sdtemplate:"{{RobotDestruir|1=|2=R1}}" -lang:es -delete -always

# Spanish Wikibooks
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py redirect do -namespace:not:2,3 -family:wikibooks -lang:es -always
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py redirect br -namespace:not:2,3 -family:wikibooks -lang:es -delete -sdtemplate:"{{destruir|1=Bot: redirección rota}}" -always

# Spanish Wikiquote
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py redirect do -namespace:not:2,3 -family:wikiquote -lang:es -always
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py redirect br -namespace:not:2,3 -family:wikiquote -lang:es -delete -sdtemplate:"{{destruir|1=Bot: redirección rota|bot=sí}}" -always

# Spanish Wikinews
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py redirect do -namespace:not:2,3 -family:wikinews -lang:es -always
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py redirect br -namespace:not:2,3 -family:wikinews -lang:es -delete -sdtemplate:"{{destruir|1=Bot: redirección rota}}" -always

# Spanish Wikisource
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py redirect do -namespace:not:2,3 -family:wikisource -lang:es -always
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py redirect br -namespace:not:2,3 -family:wikisource -lang:es -delete -sdtemplate:"{{destruir|1=Bot: redirección rota}}" -always

# Spanish Wikiversity
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py redirect do -namespace:not:2,3 -family:wikiversity -lang:es -always
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py redirect br -namespace:not:2,3 -family:wikiversity -lang:es -delete -sdtemplate:"{{destruir|1=Bot: redirección rota}}" -always

# Spanish Wikivoyage
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py redirect do -namespace:not:2,3 -family:wikivoyage -lang:es -always
$HOME/pwbvenv/bin/python3 $HOME/pywikibot-core/pwb.py redirect br -namespace:not:2,3 -family:wikivoyage -lang:es -delete -sdtemplate:"{{destruir|1=Bot: redirección rota}}" -always
