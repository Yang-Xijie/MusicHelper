tell application "Music"
	
	--sound volume (integer) : the output volume for the device (0 = minimum, 100 = maximum)	
	if (get sound volume) > 0 then
		set music_volume to (round (get sound volume) / 5 rounding up) * 5 - 5
	else
		set music_volume to 0
	end if
	set sound volume to music_volume
	
	display notification "􀊤 " & (sound volume) & "%" subtitle "Music Helper"
end tell