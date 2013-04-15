<?php
%header("##")
$rcmail_config = array();

## system error reporting: 1 = log; 2 = report (not implemented yet), 4 = show, 8 = trace
$rcmail_config['debug_level'] = 1;

## log driver:  'syslog' or 'file'.
$rcmail_config['log_driver'] = 'syslog';

## Syslog ident string to use, if using the 'syslog' log driver.
$rcmail_config['syslog_id'] = 'roundcube';

## Syslog facility to use, if using the 'syslog' log driver.
## For possible values see installer or http://php.net/manual/en/function.openlog.php
$rcmail_config['syslog_facility'] = LOG_USER;

## lifetime of message cache
## possible units: s, m, h, d, w
$rcmail_config['message_cache_lifetime'] = '10d';

## If users authentication is not case sensitive this must be enabled.
## You can also use it to force conversion of logins to lower case.
## After enabling it all user records need to be updated, e.g. with query:
## UPDATE users SET username = LOWER(username);
$rcmail_config['login_lc'] = false;

## automatically create a new RoundCube user when log-in the first time.
## a new user will be created once the IMAP login succeeds.
## set to false if only registered users can use this service
$rcmail_config['auto_create_user'] = true;

## the mail host chosen to perform the log-in
## leave blank to show a textbox at login, give a list of hosts
## to display a pulldown menu or set one host as string.
## To use SSL/TLS connection, enter hostname with prefix ssl:// or tls://
## Supported replacement variables:
## %n - http hostname ($_SERVER['SERVER_NAME'])
## %d - domain (http hostname without the first part)
## %s - domain name after the '@' from e-mail address provided at login screen
## For example %n = mail.domain.tld, %d = domain.tld
$rcmail_config['default_host'] = '%(imap_host)';

## TCP port used for IMAP connections
$rcmail_config['default_port'] = 993;

## IMAP auth type. Can be "auth" (CRAM-MD5), "plain" (PLAIN) or "check" to auto detect.
## Optional, defaults to "check"
$rcmail_config['imap_auth_type'] = null;

## Type of IMAP indexes cache. Supported values: 'db', 'apc' and 'memcache'.
$rcmail_config['imap_cache'] = null;

## Enables messages cache. Only 'db' cache is supported.
$rcmail_config['messages_cache'] = false;

## If you know your imap's root directory and its folder delimiter,
## you can specify them here. Otherwise they will be determined automatically.
$rcmail_config['imap_ns_personal'] = null;
$rcmail_config['imap_delimiter'] = null;

## By default IMAP capabilities are readed after connection to IMAP server
## In some cases, e.g. when using IMAP proxy, there's a need to refresh the list
## after login. Set to True if you've got this case.
$rcmail_config['imap_force_caps'] = false;

## IMAP connection timeout, in seconds. Default: 0 (no limit)
$rcmail_config['imap_timeout'] = 0;

## Automatically add this domain to user names for login
## Only for IMAP servers that require full e-mail addresses for login
## Specify an array with 'host' => 'domain' values to support multiple hosts
## Supported replacement variables:
## %h - user's IMAP hostname
## %n - http hostname ($_SERVER['SERVER_NAME'])
## %d - domain (http hostname without the first part)
## %z - IMAP domain (IMAP hostname without the first part)
## For example %n = mail.domain.tld, %d = domain.tld
$rcmail_config['username_domain'] = '';

## By default IMAP capabilities are readed after connection to IMAP server
## In some cases, e.g. when using IMAP proxy, there's a need to refresh the list
## after login. Set to True if you've got this case.
$rcmail_config['imap_force_caps'] = false;

## IMAP connection timeout, in seconds. Default: 0 (no limit)
$rcmail_config['imap_timeout'] = 0;

## This domain will be used to form e-mail addresses of new users
## Specify an array with 'host' => 'domain' values to support multiple hosts
## Supported replacement variables:
## %h - user's IMAP hostname
## %n - http hostname ($_SERVER['SERVER_NAME'])
## %d - domain (http hostname without the first part)
## %z - IMAP domain (IMAP hostname without the first part)
## For example %n = mail.domain.tld, %d = domain.tld
$rcmail_config['mail_domain'] = '';

## Path to a virtuser table file to resolve user names and e-mail addresses
$rcmail_config['virtuser_file'] = '';

## SMTP server host (for sending mails).
## To use SSL/TLS connection, enter hostname with prefix ssl:// or tls://
## If left blank, the PHP mail() function is used
## Supported replacement variables:
## %h - user's IMAP hostname
## %n - http hostname ($_SERVER['SERVER_NAME'])
## %d - domain (http hostname without the first part)
## %z - IMAP domain (IMAP hostname without the first part)
## For example %n = mail.domain.tld, %d = domain.tld
$rcmail_config['smtp_server'] = '%(smtp_host)';

## SMTP port (default is 25; 465 for SSL)
$rcmail_config['smtp_port'] = '%(smtp_port)';

## SMTP username (if required) if you use %u as the username RoundCube
## will use the current username for login
$rcmail_config['smtp_user'] = '%(smtp_user)';

## SMTP password (if required) if you use %p as the password RoundCube
## will use the current user's password for login
$rcmail_config['smtp_pass'] = '%(smtp_pass)';

## SMTP AUTH type (DIGEST-MD5, CRAM-MD5, LOGIN, PLAIN or empty to use
## best server supported one)
$rcmail_config['smtp_auth_type'] = '';

## SMTP HELO host
## Hostname to give to the remote server for SMTP 'HELO' or 'EHLO' messages
## Leave this blank and you will get the server variable 'server_name' or
## localhost if that isn't defined.
$rcmail_config['smtp_helo_host'] = '';

## SMTP connection timeout, in seconds. Default: 0 (no limit)
$rcmail_config['smtp_timeout'] = 0;

## Log sent messages
$rcmail_config['smtp_log'] = true;

## Password charset.
## Use it if your authentication backend doesn't support UTF-8.
## Defaults to ISO-8859-1 for backward compatibility
$rcmail_config['password_charset'] = 'ISO-8859-1';

## How many seconds must pass between emails sent by a user
$rcmail_config['sendmail_delay'] = 0;

## These cols are shown in the message list. Available cols are:
## subject, from, to, cc, replyto, date, size, flag, attachment
$rcmail_config['list_cols'] = array('subject', 'from', 'date', 'size', 'flag', 'attachment');

## Includes should be interpreted as PHP files
$rcmail_config['skin_include_php'] = false;

## Session lifetime in minutes
## must be greater than 'keep_alive'/60
$rcmail_config['session_lifetime'] = 10;

## session domain: .example.org
$rcmail_config['session_domain'] = '%(session_domain)';

## Backend to use for session storage. Can either be 'db' (default) or 'memcache'
## If set to memcache, a list of servers need to be specified in 'memcache_hosts'
## Make sure the Memcache extension (http://pecl.php.net/package/memcache) version >= 2.0.0 is installed
$rcmail_config['session_storage'] = 'db';

## Use these hosts for accessing memcached
## Define any number of hosts in the form hostname:port
## e.g. array( 'localhost:11211', '192.168.1.12:11211' );
$rcmail_config['memcache_hosts'] = null;

## check client IP in session athorization
$rcmail_config['ip_check'] = false;

## check referer of incoming requests
$rcmail_config['referer_check'] = false;
 
## X-Frame-Options HTTP header value sent to prevent from Clickjacking.
## Possible values: sameorigin|deny. Set to false in order to disable sending them
$rcmail_config['x_frame_options'] = 'sameorigin';

## this key is used to encrypt the users imap password which is stored
## in the session record (and the client cookie if remember password is enabled).
## please provide a string of exactly 24 chars.
$rcmail_config['des_key'] = 'rcmail-!24ByteDESkey*Str';

## the default locale setting (leave empty for auto-detection)
## RFC1766 formatted language name like en_US, de_DE, de_CH, fr_FR, pt_BR
$rcmail_config['language'] = null;

## use this format for date display without time (date or strftime format)
$rcmail_config['date_format'] = 'Y-m-d';

## use this format for short date display
$rcmail_config['date_short'] = 'D H:i';

## use this format for detailed date/time formatting
$rcmail_config['date_long'] = 'd.m.Y H:i';

## use this format for today's date display
$rcmail_config['date_today'] = 'H:i';

## Maximum number of recipients per message. Default: 0 (no limit)
$rcmail_config['max_recipients'] = 0;

## Maximum allowednumber of members of an address group. Default: 0 (no limit)
## If 'max_recipients' is set this value should be less or equal
$rcmail_config['max_group_members'] = 0;

## add this user-agent to message headers when sending
$rcmail_config['useragent'] = 'Sikkerhedorg Webmail';

## use this name to compose page titles
$rcmail_config['product_name'] = 'Sikkerhed.org Webmail';

## store draft message is this mailbox
## leave blank if draft messages should not be stored
## NOTE: Use folder names with namespace prefix (INBOX. on Courier-IMAP)
$rcmail_config['drafts_mbox'] = 'Drafts';

## store spam messages in this mailbox
## NOTE: Use folder names with namespace prefix (INBOX. on Courier-IMAP)
$rcmail_config['junk_mbox'] = 'Junk';

## store sent message is this mailbox
## leave blank if sent messages should not be stored
## NOTE: Use folder names with namespace prefix (INBOX. on Courier-IMAP)
$rcmail_config['sent_mbox'] = 'Sent';

## move messages to this folder when deleting them
## leave blank if they should be deleted directly
## NOTE: Use folder names with namespace prefix (INBOX. on Courier-IMAP)
$rcmail_config['trash_mbox'] = 'Trash';

## display these folders separately in the mailbox list.
## these folders will also be displayed with localized names
## NOTE: Use folder names with namespace prefix (INBOX. on Courier-IMAP)
$rcmail_config['default_imap_folders'] = array('INBOX', 'Drafts', 'Sent', 'Junk', 'Trash');

## automatically create the above listed default folders on login
$rcmail_config['create_default_folders'] = false;

## protect the default folders from renames, deletes, and subscription changes
$rcmail_config['protect_default_folders'] = true;

## if in your system 0 quota means no limit set this option to true
$rcmail_config['quota_zero_as_unlimited'] = false;

## Behavior if a received message requests a message delivery notification (read receipt)
## 0 = ask the user, 1 = send automatically, 2 = ignore (never send or ask)
$rcmail_config['mdn_requests'] = 0;

## Use this charset as fallback for message decoding
$rcmail_config['default_charset'] = 'ISO-8859-1';

## Make use of the built-in spell checker. It is based on GoogieSpell.
## Since Google only accepts connections over https your PHP installatation
## requires to be compiled with Open SSL support
$rcmail_config['enable_spellcheck'] = true;

## Set the spell checking engine. 'googie' is the default. 'pspell' is also available,
## but requires the Pspell extensions. When using Nox Spell Server, also set 'googie' here.
$rcmail_config['spellcheck_engine'] = 'googie';

## For a locally installed Nox Spell Server, please specify the URI to call it.
## Get Nox Spell Server from http://orangoo.com/labs/?page_id=72
## Leave empty to use the Google spell checking service, what means
## that the message content will be sent to Google in order to check spelling
$rcmail_config['spellcheck_uri'] = '';

## These languages can be selected for spell checking.
## Configure as a PHP style hash array: array('en'=>'English', 'de'=>'Deutsch');
## Leave empty for default set of Google spell check languages, should be defined
## when using local Pspell extension
$rcmail_config['spellcheck_languages'] = NULL;

## path to a text file which will be added to each sent message
## paths are relative to the RoundCube root folder
$rcmail_config['generic_message_footer'] = '';

## path to a text file which will be added to each sent HTML message
## paths are relative to the Roundcube root folder
$rcmail_config['generic_message_footer_html'] = '';

## add a received header to outgoing mails containing the creators IP and hostname
$rcmail_config['http_received_header'] = false;

## this string is used as a delimiter for message headers when sending
## leave empty for auto-detection
$rcmail_config['mail_header_delimiter'] = NULL;

## number of chars allowed for line when wrapping text.
## text wrapping is done when composing/sending messages
$rcmail_config['line_length'] = 72;

## send plaintext messages as format=flowed
$rcmail_config['send_format_flowed'] = true;

## This indicates which type of address book to use. Possible choises:
## 'sql' (default) and 'ldap'.
## If set to 'ldap' then it will look at using the first writable LDAP
## address book as the primary address book and it will not display the
## SQL address book in the 'Address Book' view.
$rcmail_config['address_book_type'] = 'sql';

## In order to enable public ldap search, configure an array like the Verisign
## example further below. if you would like to test, simply uncomment the example.
## Array key must contain only safe characters, ie. a-zA-Z0-9_
$rcmail_config['ldap_public'] = array();

##
## If you are going to use LDAP for individual address books, you will need to
## set 'user_specific' to true and use the variables to generate the appropriate DNs to access it.
##
## The recommended directory structure for LDAP is to store all the address book entries
## under the users main entry, e.g.:
##
##  o=root
##   ou=people
##    uid=user@domain
##  mail=contact@contactdomain
##
## So the base_dn would be uid=%fu,ou=people,o=root
## The bind_dn would be the same as based_dn or some super user login.
/*
 * example config for Verisign directory
 *
$rcmail_config['ldap_public']['Verisign'] = array(
  'name'          => 'Verisign.com',
  // Replacement variables supported in host names:
  // %%h - user's IMAP hostname
  // %%n - http hostname ($_SERVER['SERVER_NAME'])
  // %%d - domain (http hostname without the first part)
  // %%z - IMAP domain (IMAP hostname without the first part)
  // For example %%n = mail.domain.tld, %%d = domain.tld
  'hosts'         => array('directory.verisign.com'),
  'port'          => 389,
  'use_tls'         => false,
  'user_specific' => false,   // If true the base_dn, bind_dn and bind_pass default to the user's IMAP login.
  // %%fu - The full username provided, assumes the username is an email
  //       address, uses the username_domain value if not an email address.
  // %%u  - The username prior to the '@'.
  // %%d  - The domain name after the '@'.
  // %%dc - The domain name hierarchal string e.g. "dc=test,dc=domain,dc=com"
  'base_dn'       => '',
  'bind_dn'       => '',
  'bind_pass'     => '',
  'writable'      => false,   // Indicates if we can write to the LDAP directory or not.
  // If writable is true then these fields need to be populated:
  // LDAP_Object_Classes, required_fields, LDAP_rdn
  'LDAP_Object_Classes' => array("top", "inetOrgPerson"), // To create a new contact these are the object classes to specify (or any other classes you wish to use).
  'required_fields'     => array("cn", "sn", "mail"),     // The required fields needed to build a new contact as required by the object classes (can include additional fields not required by the object classes).
  'LDAP_rdn'      => 'mail', // The RDN field that is used for new entries, this field needs to be one of the search_fields, the base of base_dn is appended to the RDN to insert into the LDAP directory.
  'ldap_version'  => 3,       // using LDAPv3
  'search_fields' => array('mail', 'cn'),  // fields to search in
  'name_field'    => 'cn',    // this field represents the contact's name
  'email_field'   => 'mail',  // this field represents the contact's e-mail
  'surname_field' => 'sn',    // this field represents the contact's last name
  'firstname_field' => 'gn',  // this field represents the contact's first name
  'sort'          => 'cn',    // The field to sort the listing by.
  'scope'         => 'sub',   // search mode: sub|base|list
  'filter'        => '',      // used for basic listing (if not empty) and will be &'d with search queries. example: status=act
  'fuzzy_search'  => true,    // server allows wildcard search
  'sizelimit'     => '0',     // Enables you to limit the count of entries fetched. Setting this to 0 means no limit.
  'timelimit'     => '0',     // Sets the number of seconds how long is spend on the search. Setting this to 0 means no limit.
);
*/

## An ordered array of the ids of the addressbooks that should be searched
## when populating address autocomplete fields server-side. ex: array('sql','Verisign');
$rcmail_config['autocomplete_addressbooks'] = array('sql');

## may need to do lengthy results building given overly-broad searches
$rcmail_config['autocomplete_min_length'] = 1;
 
## Number of parallel autocomplete requests.
## If there's more than one address book, n parallel (async) requests will be created,
## where each request will search in one address book. By default (0), all address
## books are searched in one request.
$rcmail_config['autocomplete_threads'] = 0;

## Max. numer of entries in autocomplete popup. Default: 15.
$rcmail_config['autocomplete_max'] = 15;

## show address fields in this order
## available placeholders: {street}, {locality}, {zipcode}, {country}, {region}
$rcmail_config['address_template'] = '{street}<br/>{locality} {zipcode}<br/>{country} {region}';

## don't allow these settings to be overriden by the user
$rcmail_config['dont_override'] = array();

## Set identities access level:
## 0 - many identities with possibility to edit all params
## 1 - many identities with possibility to edit all params but not email address
## 2 - one identity with possibility to edit all params
## 3 - one identity with possibility to edit all params but not email address
$rcmail_config['identities_level'] = 0;

## try to load host-specific configuration
## see http://trac.roundcube.net/wiki/Howto_Config for more details
$rcmail_config['include_host_config'] = false;

## don't let users set pagesize to more than this value if set
$rcmail_config['max_pagesize'] = 200;

## Mimetypes supported by the browser.
## attachments of these types will open in a preview window
## either a comma-separated list or an array: 'text/plain,text/html,text/xml,image/jpeg,image/gif,image/png,application/pdf'
## (null == default)
$rcmail_config['client_mimetypes'] = null;  

## mime magic database
$rcmail_config['mime_magic'] = '/usr/share/misc/magic';

## path to imagemagick identify binary
$rcmail_config['im_identify_path'] = null;

## path to imagemagick convert binary
$rcmail_config['im_convert_path'] = null;

## maximum size of uploaded contact photos in pixel
$rcmail_config['contact_photo_size'] = 160;

## default messages sort column. Use empty value for default server's sorting,
## or 'arrival', 'date', 'subject', 'from', 'to', 'size', 'cc'
$rcmail_config['message_sort_col'] = 'date';

## default sort order
$rcmail_config['message_sort_order'] = 'DESC';

## THIS OPTION WILL ALLOW THE INSTALLER TO RUN AND CAN EXPOSE SENSITIVE CONFIG DATA.
## ONLY ENABLE IT IF YOU'RE REALLY SURE WHAT YOU'RE DOING!
$rcmail_config['enable_installer'] = false;

## Log successful logins
$rcmail_config['log_logins'] = false;

## Log session authentication errors to <log_dir>/session or to syslog
$rcmail_config['log_session'] = false;

/**
 * 'Delete always'
 * This setting reflects if mail should be always marked as deleted,
 * even if moving to "Trash" fails. This is necessary in some setups
 * because a) people may not have a Trash folder or b) they are over
 * quota (and Trash is included in the quota).
 *
 * This is a failover setting for iil_C_Move when a message is moved
 * to the Trash.
 */

$rcmail_config['delete_always'] = false;
## 0 - Do not expand threads
## 1 - Expand all threads automatically
## 2 - Expand only threads with unread messages
$rcmail_config['autoexpand_threads'] = 0;

## When replying place cursor above original message (top posting)
$rcmail_config['top_posting'] = false;

## When replying strip original signature from message
$rcmail_config['strip_existing_sig'] = true;

## Show signature:
## 0 - Never
## 1 - Always
## 2 - New messages only
## 3 - Forwards and Replies only
$rcmail_config['show_sig'] = 1;

## When replying or forwarding place sender's signature above existing message
$rcmail_config['sig_above'] = false;

## Use MIME encoding (quoted-printable) for 8bit characters in message body
$rcmail_config['force_7bit'] = false;

## Defaults of the search field configuration.
## The array can contain a per-folder list of header fields which should be considered when searching
## The entry with key '*' stands for all folders which do not have a specific list set.
## Please note that folder names should to be in sync with $rcmail_config['default_imap_folders']
$rcmail_config['search_mods'] = null;  ## Example: array('*' => array('subject'=>1, 'from'=>1), 'Sent' => array('subject'=>1, 'to'=>1));

## Defaults of the addressbook search field configuration.
## Example: array('name'=>1, 'firstname'=>1, 'surname'=>1, 'email'=>1, '*'=>1);
$rcmail_config['addressbook_search_mods'] = null;  

## Minimal value of user's 'keep_alive' setting (in seconds)
## Must be less than 'session_lifetime'
$rcmail_config['min_keep_alive'] = 60;

## Enables files upload indicator. Requires APC installed and enabled apc.rfc1867 option.
## By default refresh time is set to 1 second. You can set this value to true
## or any integer value indicating number of seconds.
$rcmail_config['upload_progress'] = false;

## Specifies for how many seconds the Undo button will be available
## after object delete action. Currently used with supporting address book sources.
## Setting it to 0, disables the feature.
$rcmail_config['undo_timeout'] = 0;

/***** these settings can be overwritten by user preferences *****/

## skin name: folder from skins/
$rcmail_config['skin'] = '%(skin)';

## show up to X items in list view
$rcmail_config['pagesize'] = 42;

## use this timezone to display date/time
$rcmail_config['timezone'] = 'auto';

## is daylight saving On?
$rcmail_config['dst_active'] = (bool)date('I');

## prefer displaying HTML messages
$rcmail_config['prefer_html'] = true;

## display remote inline images
## 0 - Never, always ask
## 1 - Ask if sender is not in address book
## 2 - Always show inline images
$rcmail_config['show_images'] = 0;

## compose html formatted messages by default
$rcmail_config['htmleditor'] = false;

## show pretty dates as standard
$rcmail_config['prettydate'] = true;

## save compose message every 300 seconds (5min)
$rcmail_config['draft_autosave'] = 300;

## default setting if preview pane is enabled
$rcmail_config['preview_pane'] = false;

## Mark as read when viewed in preview pane (delay in seconds)
## Set to -1 if messages in preview pane should not be marked as read
$rcmail_config['preview_pane_mark_read'] = 0;

## Clear Trash on logout
$rcmail_config['logout_purge'] = false;

## Compact INBOX on logout
$rcmail_config['logout_expunge'] = false;

## Display attached images below the message body
$rcmail_config['inline_images'] = true;

## Encoding of long/non-ascii attachment names:
## 0 - Full RFC 2231 compatible
## 1 - RFC 2047 for 'name' and RFC 2231 for 'filename' parameter (Thunderbird's default)
## 2 - Full 2047 compatible
$rcmail_config['mime_param_folding'] = 0;

## Set true if deleted messages should not be displayed
## This will make the application run slower
$rcmail_config['skip_deleted'] = false;

## Set true to Mark deleted messages as read as well as deleted
## False means that a message's read status is not affected by marking it as deleted
$rcmail_config['read_when_deleted'] = true;

## Set to true to never delete messages immediately
## Use 'Purge' to remove messages marked as deleted 
$rcmail_config['flag_for_deletion'] = false;

## Default interval for keep-alive/check-recent requests (in seconds)
## Must be greater than or equal to 'min_keep_alive' and less than 'session_lifetime'
$rcmail_config['keep_alive'] = 60;

## If true all folders will be checked for recent messages
$rcmail_config['check_all_folders'] = false;

## Place replies in the folder of the message being replied to
$rcmail_config['reply_same_folder'] = false;
 
## Sets default mode of Forward feature to "forward as attachment"
$rcmail_config['forward_attachment'] = false;

## Defines address book (internal index) to which new contacts will be added
## By default it is the first writeable addressbook.
## Note: Use '0' for built-in address book.
$rcmail_config['default_addressbook'] = null;

## Enables spell checking before sending a message.
$rcmail_config['spellcheck_before_send'] = false;

## end of config file
?>
