
-- Setup `mypath`
try
  set mypath to POSIX path of (path to me)
  set AppleScript's text item delimiters to "/"
	set mypath to (mypath's text items 1 thru -2 as string) & "/"
	set AppleScript's text item delimiters to ""
on error e
  error "Couldn't set up mypath!" & e
end try

-- Check which Apple Music app to use (iTunes for pre-Catalina or Music otherwise)
-- NOTE: This is a slightly hacky way to modify the `getTrack.scpt`, for the goal of accomodating to your macOS's music player
set command to ""
try
  tell application "Finder" to get application file id "com.apple.Music"
  set command to "sed -i '' 's/\"iTunes\"/\"Music\"/' UeberPlayer.widget/lib/getTrack.scpt"
on error
  set appleMusicApp to "iTunes"
  set command to "sed -i '' 's/\"Music\"/\"iTunes\"/' UeberPlayer.widget/lib/getTrack.scpt"
end try
do shell script command

-- Use a .plist file to detect changes
global plist_filepath
set plist_filepath to (mypath & "currentTrack.plist" as string)

-- Reset .plist file on start
tell application "System Events"
  try
    tell property list file plist_filepath
      set value of property list item "album" to ""
      set value of property list item "artist" to ""
    end tell
  on error e
    my createPlist()
  end try
end tell

--- -- - SUBROUTINES - -- ---

-- Create plist file when it doesn't exist or on error
on createPlist()
  tell application "System Events"
    set the parent_dictionary to make new property list item with properties { kind:record }
    set plist_file to make new property list file with properties { contents: parent_dictionary, name: plist_filepath }
    tell property list items of plist_file
      make new property list item at end with properties { kind: string, name: "album", value: "" }
      make new property list item at end with properties { kind: string, name: "artist", value: "" }
    end tell
  end tell
end createPlist
