# Test
[toc]
# applescript learning 201113

[最开始启蒙我的一篇blog](https://256stuff.com/gray/docs/misc/itunes_applescript_commands/)，本来想找文档的，结果这个人告诉我poorly documentated，那就不找了，看第三方的文档就行

[iTunes AppleScript examples (command examples)](http://alvinalexander.com/apple/itunes-applescript-examples-scripts-mac-reference/)

[iTunes & AppleScript Basics ](https://dougscripts.com/itunes/itinfo/info01.php)

```applescript
tell application "Music"
	previous track
	
	if (album of current track) ≠ " " then
		set name_album to (name of current track) & " - " & (album of current track)
	else
		set name_album to (name of current track)
		if (artist of current track) ≠ " " then
			set name_album to (name of current track) & " - " & (artist of current track)
		end if
	end if
	
	--display notification name_album with title "􀊉" subtitle "Music Helper"
end tell
```