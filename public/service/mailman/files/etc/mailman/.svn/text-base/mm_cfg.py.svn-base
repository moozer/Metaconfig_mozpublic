%# -*- python -*-
%header("##")
"""This is the module which takes your site-specific settings.

From a raw distribution it should be copied to mm_cfg.py.  If you
already have an mm_cfg.py, be careful to add in only the new settings
you want.  The complete set of distributed defaults, with annotation,
are in ./Defaults.  In mm_cfg, override only those you want to
change, after the

  from Defaults import *

line (see below).

Note that these are just default settings - many can be overridden via the
admin and user interfaces on a per-list or per-user basis.

Note also that some of the settings are resolved against the active list
setting by using the value as a format string against the
list-instance-object's dictionary - see the distributed value of
DEFAULT_MSG_FOOTER for an example."""


from Defaults import *

MAILMAN_SITE_LIST = 'mailman'

DEFAULT_URL_PATTERN = 'https://%%s/cgi-bin/mailman/'
PUBLIC_ARCHIVE_URL  = 'https://%%(hostname)s/pipermail/%%(listname)s/'
PRIVATE_ARCHIVE_URL = '/cgi-bin/mailman/private'
IMAGE_LOGOS         = '/images/mailman/'

DEFAULT_EMAIL_HOST = '%(mailman_domains[0])'
DEFAULT_URL_HOST   = '%(mailman_domains[0])'

#foreach dom in mailman_domains
  add_virtualhost("%(dom)", "%(dom)")
#end

DEFAULT_SERVER_LANGUAGE = 'en'
DEFAULT_SEND_REMINDERS = 0

MTA=None

add_language('da',    'Danish',              'utf-8',  'ltr')
add_language('en',    'English (utf-8)',     'utf-8',  'ltr')

