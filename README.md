This is an automation script to automate opening a series of webpages in different tabs on a new browser window, everyday at 11am.

URLs.gs: Automates retrieving excel data and converting it to the necessary format.
apply.applescript: Runs the Google Script, retrieves the data and opens the webpages in different tabs in the browser.
apply.sh: Launches a new window on Firefox and runs the Apple Script. 

Behind the scenes: A cron job was created that runs the apply.sh script everyday at 11am.

Appropriate delays have been given for each step.
