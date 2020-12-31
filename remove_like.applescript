-- REMOVE_LIKE
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
	
	if previous_loved = true then
		set (loved of current track) to false
		display notification name_album with title "􀆉􀊵􀰑􀊴􀆊" subtitle "Music Helper"
	end if
	if previous_disliked = true then
		set (disliked of current track) to false
		display notification name_album with title "􀆉􀊷􀰑􀊴􀆊" subtitle "Music Helper"
	end if
	if previous_loved = false and previous_disliked = false then
		display notification name_album with title "􀆉􀊴􀰑􀊴􀆊" subtitle "Music Helper"
	end if
	
	next track
	
end tell
