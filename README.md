# MABot
## General information
This repository host the job commands that [MABot](https://meta.wikimedia.org/wiki/User:MABot) runs on some Wikimedia Projects by using a [cron tab](https://en.wikipedia.org/wiki/Cron). The bot operates using Python and [pywikibot](https://github.com/wikimedia/pywikibot) and runs on [Wikimedia's Toolforge project](https://wikitech.wikimedia.org/wiki/Portal:Toolforge).

## Summary of projects

| Project | Redirects | Archive
| :---:   | :---:     | :---:
| an.wikipedia.org | Yes | Yes
| an.wiktionary.org | Yes | Yes
| ang.wikipedia.org | Yes | Yes
| ast.wikipedia.org | Only [double redirects](https://ast.wikipedia.org/wiki/Special:DoubleRedirects) | Yes
| ast.wiktionary.org | Yes | Yes
| ca.wikibooks.org | Yes | No
| es.wikibooks.org | Yes | Yes
| es.wikinews.org | Yes | Yes
| es.wikipedia.org | Yes | Yes
| es.wikiquote.org | Yes | Yes
| es.wikisource.org | Yes | Yes
| es.wikivoyage.org | Yes | Yes
| es.wiktionary.org | No | Yes
| en.wikibooks.org | No | Yes
| eu.wikibooks.org | Yes | Yes
| eu.wikipedia.org | Yes | Yes
| eu.wikiquote.org | Yes | No
| ext.wikipedia.org | Yes | Yes
| gl.wikibooks.org | Yes | Yes
| gl.wikiquote.org | Yes | Yes
| gl.wiktionary.org | Only [double redirects](https://gl.wiktionary.org/wiki/Special:DoubleRedirects) | Yes
| jam.wikipedia.org | Yes | Yes
| meta.wikimedia.org | Yes | No
| nap.wikisource.org | Yes | No
| olo.wikipedia.org | Yes | Yes
| sco.wikipedia.org | Only [double redirects](https://sco.wikipedia.org/wiki/Special:DoubleRedirects) | Yes
| species.wikimedia.org | Only [double redirects](https://species.wikimedia.org/wiki/Special:DoubleRedirects) | Yes
| tcy.wikipedia.org | Yes | Yes

In adittion, MABot maintains redirected categories on `es.wikipedia.org`, `es.wikibooks.org`, `es.wikisource.org` and `meta.wikimedia.org`.

It also automatically cleans the Sandbox pages for `es.wikibooks.org`, `es.wikiquote.org`, `es.wikisource.org`, `es.wikivoyage.org`, `es.wiktionary.org` & `meta.wikimedia.org`.

## Information for wikitech.wikimedia.org
MABot operates in a different schedule in https://wikitech.wikimedia.org due to its low level of traffic and edits. The bot will archive talk pages just **once a week** every Friday, and will attempt to fix (or tag for deletion) double or broken redirects just **twice per month** (on 1st and 15th of each month). This is done to save Toolforge resources by avoiding "empty runs" of the bot.
