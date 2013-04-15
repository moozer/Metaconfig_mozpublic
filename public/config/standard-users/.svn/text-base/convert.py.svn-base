#!/usr/bin/python

import sys

template = """[user:%s]
uid = %s
gid = %s
gecos = "%s"
home = "%s"
shell = "%s"
"""

for line in sys.stdin:
  user, passwd, uid, gid, gecos, home, shell = line.rstrip("\n").split(":")
  print template % (user, uid, gid, gecos, home, shell)
