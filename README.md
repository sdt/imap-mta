# imap-mta

An experimental MTA that doesn't actually send any mail at all.

All emails received are deposited directly into a folder on an IMAP server.

I use this on home servers that generate various system emails, eg. cron jobs, which I've previously used direct-smtp agents like dma. I've never been able to get the setup quite right to prevent my system emails ending up in spam folders.

This approach is an attempt to bypass this altogether.

## Files in use:

`/usr/local/bin/imap-mta`
  * shell script which sets vars and calls the main script
  * `root:mail -rwxrwsrwx`
  * `/usr/sbin/sendmail` symlinks to this

`/var/spool/imap-mta`
  * mail files get written here before sending
  * `root:mail drwxrws---`

`/run/lock/imap-mta`
  * pid file

Called by sendmail, and from user crontab to flush the queue
