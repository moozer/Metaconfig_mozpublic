%#!/usr/bin/env python
%header("##")
import os, sys
import urllib, re, subprocess
outdir = '/var/www/images'
wwwpath = 'http://localhost/images';
img_regex = re.compile(r'(?i).(jpg|jpeg|png|gif)$')
operation = '-flip'
##operation = '-quality 10 -flop'
operation = operation.split()
count = 0
while True:
    l = raw_input().split(' ')
    url = l[0]
    m = img_regex.search(url)
    if m:
        outname = '%%d-%%d.%%s' %% (os.getpid(), count, m.group(1))
        outpath = os.path.join(outdir, outname)
        count += 1
        try:
            urllib.urlretrieve(url, outpath)
            os.chmod(outpath, 0644)
            subprocess.call(['mogrify'] + operation + [outpath])
            print '/'.join([wwwpath, outname])
        except (IOError, urllib.ContentTooShortError):
            print url
    else:
        print url
    sys.stdout.flush()
