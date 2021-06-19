# MABot
## General information
This repository host the job commands of [MABot](https://meta.wikimedia.org/wiki/User:MABot), a multi-purpose maintenance bot that runs on some Wikimedia Projects. The bot operates and use the standard [pywikibot](https://github.com/wikimedia/pywikibot) scripts.

## Summary of projects where MABot is currently active

| Project | Redirects | Archive | Additional tasks
| :---:   | :---:     | :---:   | :----:
| an.wikipedia.org | Yes | Yes
| an.wiktionary.org | Yes | Yes
| ang.wikipedia.org | Yes | Yes
| ast.wikipedia.org | Only [double redirects](https://ast.wikipedia.org/wiki/Special:DoubleRedirects) | Yes
| ast.wiktionary.org | Yes | Yes
| es.wikibooks.org | Yes | Yes | Redirected categories, clear sandbox
| es.wikinews.org | Yes | Yes
| es.wikipedia.org | Yes | Yes | Redirected categories
| es.wikiquote.org | Yes | Yes | Clear sandbox
| es.wikisource.org | Yes | Yes | Redirected categories, clear sandbox
| es.wikivoyage.org | Yes | Yes | Clear sandbox
| es.wiktionary.org | No | Yes | Clear sandbox
| en.wikibooks.org | No | Yes
| eu.wikibooks.org | Yes | Yes
| eu.wikipedia.org | Yes | Yes
| eu.wikiquote.org | Yes | No
| gl.wikibooks.org | Yes | Yes
| gl.wikiquote.org | Yes | Yes
| gl.wiktionary.org | Only [double redirects](https://gl.wiktionary.org/wiki/Special:DoubleRedirects) | Yes
| meta.wikimedia.org | Yes | No | Redirected categories
| sco.wikipedia.org | Only [double redirects](https://sco.wikipedia.org/wiki/Special:DoubleRedirects) | Yes
| species.wikimedia.org | Only [double redirects](https://species.wikimedia.org/wiki/Special:DoubleRedirects) | Yes

## Additional tasks
MABot maintains redirected categories on `es.wikipedia.org`, `es.wikibooks.org`, `es.wikisource.org` and `meta.wikimedia.org`. An on-wiki report is generated afterwards for each run. It also automatically cleans the Sandbox pages for `es.wikibooks.org`, `es.wikiquote.org`, `es.wikisource.org`, `es.wikivoyage.org`, `es.wiktionary.org` and `meta.wikimedia.org` using a whitelist to run only on the specified pages.

## Different work schedule for Wikitech
MABot is authorized to run on [Wikitech](https://wikitech.wikimedia.org), however due to its low level of traffic and edits it uses a different work schedule: the bot will archive talk pages just **once a week** every Friday, and will attempt to fix (or tag for deletion) double or broken redirects just **twice per month** (on the 1st and 15th days of each month). This is done to save shared Toolforge resources by avoiding as much "empty runs" of the bot as possible.

## Bugs
Bugs and requests are better handled by posting a message to my [Meta-Wiki talk page](https://meta.wikimedia.org/wiki/User_talk:MarcoAurelio).

Please note that due to the personal nature of this project, GitHub issues and pull requests ain't accepted. Thank you for your understanding.
