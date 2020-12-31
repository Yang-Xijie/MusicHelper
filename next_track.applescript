tell application "Music"
	next track
	
	if (album of current track) ≠ " " then
		set name_album to (name of current track) & " - " & (album of current track)
	else
		set name_album to (name of current track)
		if (artist of current track) ≠ " " then
			set name_album to (name of current track) & " - " & (artist of current track)
		end if
	end if
	
	--display notification name_album with title "􀊋" subtitle "Music Helper"
end tell