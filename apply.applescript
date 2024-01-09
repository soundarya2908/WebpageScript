set webAppURL to "https://script.google.com/macros/s/AKfycbxTPQqtqsGzZ2JbthdELrbKWIXYro2ozuKi3tfljn_DfSSxPcoJHkFqcKdXhaC2oGkQ/exec"

-- Open the web app URL in the default web browser
open location webAppURL

-- Wait for a moment to allow the web app to load
delay 5

-- Copy the content of the web app to clipboard
tell application "System Events" to keystroke "a" using {command down}
tell application "System Events" to keystroke "c" using {command down}

-- Pause briefly to allow the clipboard to be updated
delay 1

-- Get the content from the clipboard
set myURLs to the clipboard as text

-- Extract URLs from the content
set myURLs to paragraphs of myURLs

-- Open URLs in Firefox
tell application "Firefox"
    activate
    repeat with myURL in myURLs
        open location myURL
        delay 1
    end repeat
end tell