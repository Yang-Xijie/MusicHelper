tell application "Music"
	
	if it is running then
		if (album of current track) ≠ " " then
			set name_album to (name of current track) & " - " & (album of current track)
		else
			set name_album to (name of current track)
			if (artist of current track) ≠ " " then
				set name_album to (name of current track) & " - " & (artist of current track)
			end if
		end if
		
		playpause --change state playing and paused
		display notification name_album with title "􀊇" subtitle "Music Helper" --Music.app won't give notification when state changed
		
	else
		run --open Music.app in background (use "active" to open the window)
		next track --get a list of music to play
		playpause --start playing		
	end if
	
end tell