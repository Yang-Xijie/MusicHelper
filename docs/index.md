# 1

hhh

# applescript learning 201113
[最开始启蒙我的一篇blog](https://256stuff.com/gray/docs/misc/itunes_applescript_commands/)，本来想找文档的，结果这个人告诉我poorly documentated，那就不找了，看第三方的文档就行
[iTunes AppleScript examples (command examples)](http://alvinalexander.com/apple/itunes-applescript-examples-scripts-mac-reference/)
[iTunes & AppleScript Basics ](https://dougscripts.com/itunes/itinfo/info01.php)
tell application "Music" to next track

tell application "System Events" to tell process "NeteaseMusic"
  click menu item "Play" of menu 1 of menu bar item "controls" of menu bar 1
end tell

tell application "iTunes"
	if player state is paused then play
	else pause
end tell

if player state is playing then

tell application "iTunes"
  set currentVolume to sound volume
end tell



```as
tell application "Music"
	next track
end tell
delay 2
display notification "next track" with title "Music Controller" subtitle "Processing is complete."
```

# next_track
```as
tell application "Music"
	next track
	delay 5
	display notification "[next_track] " & (get name of current track) with title "Music Controller"
end tell
```