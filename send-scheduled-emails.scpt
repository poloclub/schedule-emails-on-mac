# This AppleScript instructs the Mail application on your Mac to send every email in the "Scheduled" mailbox. If Mail is not running, this script launches it. Tested on macOS Bug Sur. 
# Apache Software License 2.0
# Author: Duen Horng (Polo) Chau
tell application "Mail"
	
	set scheduledEmails to every message in mailbox "Scheduled" of account "Email Account"
	
	repeat with email in scheduledEmails
		
		# Move email to Mail's local "Outbox" on your computer. Mail automatically sends them, usually within 10-20 minutes, and not immediately. Not sure why Mail does this.
		move email to mailbox "Outbox"
		
	end repeat
	
end tell
