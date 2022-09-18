#!/bin/bash
cd /data/project/mabot/scripts
python3 delinker.py -localonly -since:20050101000000 -family:meta -lang:meta -simulate
