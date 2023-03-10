#! ~/venv/bin/python3

########################### Transclusion count tool ###########################
# Updates subpages of the page specified by the "rootpage" variable with      #
# transclusion counts for all templates and modules on the wiki specified by  #
# the "lang" variable.                                                        #
#                                                                             #
# This script must be run on toolforge, with both Pywikibot and the toolforge #
# library installed. See:                                                     #
# //wikitech.wikimedia.org/wiki/Help:Toolforge/My_first_Pywikibot_tool        #
# //wikitech.wikimedia.org/wiki/User:Legoktm/toolforge_library                #
#                                                                             #
# See the following for setting up Toolforge to run python jobs:              #
# //wikitech.wikimedia.org/wiki/Help:Toolforge/Python#Kubernetes_python_jobs  #
#                                                                             #
# When creating the bootstrap_venv.sh file, include the following:            #
# pip install toolforge                                                       #
# pip install pywikibot                                                       #
# pip install "mwparserfromhell>=0.5.0"                                       #
# pip install "wikitextparser>=0.47.5"                                        #
#                                                                             #
# To run automatically, use the following command:                            #
#                                                                             #
# toolforge-jobs run transclusioncount --command "pyvenv/bin/python scripts/transclusioncount.py" --image tf-python39 --schedule "00 12 * * SUN"
#                                                                             #
# I would recommend changing 00 12 to a random time, to avoid running when    #
# lots of other scripts are using server resources                            #
###############################################################################

import toolforge
import pywikibot
import time
from math import log10, floor

# set debug = "no" to enable writing to wiki
class settings:
	lang = 'enwiki'
	rootpage = "Module:Transclusion count/"
	editsumm = "[[Wikipedia:BOT|Bot]]: Updated page."
	debug = "no"
	sigfigs = 2

report_title = settings.rootpage + 'data/'

report_template = '''\
return {
%s
}
'''

wiki = pywikibot.Site()

query1 = '''
/* transclusioncount.py SLOW_OK */
SELECT
  lt_title,
  COUNT(*)
FROM templatelinks JOIN linktarget ON tl_target_id = lt_id
WHERE lt_namespace = 10
GROUP BY lt_title
HAVING COUNT(*) > 2000
LIMIT 10000;
'''

query2 = '''
/* transclusioncount.py SLOW_OK */
SELECT
  lt_title,
  COUNT(*)
FROM templatelinks JOIN linktarget ON tl_target_id = lt_id
WHERE lt_namespace = 828
GROUP BY lt_title
HAVING COUNT(*) > 2000
LIMIT 10000;
'''

if settings.debug != "no":
	print("Query:\n" + query)

connectSuccess = False
tries = 0

while not connectSuccess:
	try:
		conn = toolforge.connect(settings.lang, 'analytics')
		print("\nExecuting query1 at %s..." % (time.ctime()))
		with conn.cursor() as cursor:
			cursor.execute(query1)
			result1 = cursor.fetchall()
		print("\nExecuting query2 at %s..." % (time.ctime()))
		with conn.cursor() as cursor:
			cursor.execute(query2)
			result2 = cursor.fetchall()
		connectSuccess = True
		print("Success at %s!" % (time.ctime()))
	except Exception as e:
		try:
			cursor.close()
		except:
			pass
		try:
			conn.close()
		except:
			pass
		print("Error: ", e)
		tries += 1
		if tries > 24:
			print("Script failed after 24 tries at %s."  % (time.ctime()))
			raise SystemExit(e)
		else:
			print("Waiting 1 hour starting at %s..."  % (time.ctime()))
			time.sleep(3600)

if settings.debug != "no":
	import os
	try:
		with open(os.path.join(os.getcwd(), 'result1.txt'), "w") as f:
			f.write(str(result1))
		with open(os.path.join(os.getcwd(), 'result2.txt'), "w") as f:
			f.write(str(result2))
	except Exception as e:
		print("Error writing to file: %s" % (e))
	print("\nBuilding output...")


output = {"A": [], "B": [], "C": [], "D": [], "E": [], "F": [], "G": [], "H": [], "I": [], "J": [], "K": [], "L": [], "M": [], "N": [], "O": [], "P": [], "Q": [], "R": [], "S": [], "T": [], "U": [], "V": [], "W": [], "X": [], "Y": [], "Z": [], "other": []}

for row in result1:
	try:
		lt_title = row[0].decode()
	except:
		lt_title = str(row[0])
	index_letter = lt_title[0]
	if row[1] < 100000: #Use an extra sigfig for very large counts
		sigfigs = settings.sigfigs - 1
	else:
		sigfigs = settings.sigfigs
	uses = round(row[1], -int(floor(log10(row[1])))+sigfigs)
	table_row = '''["%s"] = %i,''' % (lt_title.replace("\\", "\\\\").replace('"', '\\"'), uses)
	try:
		output[index_letter].append(table_row)
	except:
		output["other"].append(table_row)

for row in result2:
	try:
		lt_title = row[0].decode()
	except:
		lt_title = str(row[0])
	index_letter = lt_title[0]
	if row[1] < 100000: #Use an extra sigfig for very large counts
		sigfigs = settings.sigfigs - 1
	else:
		sigfigs = settings.sigfigs
	uses = round(row[1], -int(floor(log10(row[1])))+sigfigs)
	table_row = '''["Module:%s"] = %i,''' % (lt_title.replace("\\", "\\\\").replace('"', '\\"'), uses)
	try:
		output[index_letter].append(table_row)
	except:
		output["other"].append(table_row)

for section in output:
	report = pywikibot.Page(wiki, report_title + section)
	old_text = report.text
	report.text = report_template % ('\n'.join(output[section]))
	if settings.debug == "no":
		# print("Writing " + report_title + section)
		try:
			report.save(settings.editsumm)
		except Exception as e:
			print("Error at %s: %s" % (time.ctime(),e))
	else:
		print("== " + report_title + section + " ==\n\n" + report.text)
		
print("\nDone at %s!" % (time.ctime()))
