-- DISLIKE
tell application "Music"
	
	if (album of current track) ≠ " " then
		set name_album to (name of current track) & " - " & (album of current track)
	else
		set name_album to (name of current track)
		if (artist of current track) ≠ " " then
			set name_album to (name of current track) & " - " & (artist of current track)
		end if
	end if
	
	set previous_loved to (loved of current track)
	set previous_disliked to (disliked of current track)
	
	if previous_disliked = true then
		display notification name_album with title "􀆉􀊷􀰑􀊷􀆊" subtitle "Music Helper"
	else
		set (disliked of current track) to true
		if previous_loved = true then
			display notification name_album with title "􀆉􀊵􀰑􀊷􀆊" subtitle "Music Helper"
		else
			display notification name_album with title "􀆉􀊴􀰑􀊷􀆊" subtitle "Music Helper"
		end if
	end if
	
	next track
end tell
