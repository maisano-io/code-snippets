# This PowerShell command is used to modify calendar processing settings for a specific mailbox.

# The 'Set-CalendarProcessing' cmdlet is used to configure calendar processing options.
# '-Identity' specifies the mailbox to which the settings will be applied. 
# In this case, it is 'yamatjiboardroom@ysrc.com.au'.
# '-AllowExternalMeetingMessages $true' enables the mailbox to process meeting messages from external senders.
# This is essential for allowing users who are not part of your organization to send meeting requests.

Set-CalendarProcessing -Identity "yamatjiboardroom@ysrc.com.au" -AllowExternalMeetingMessages $true

# End of command.