tell application "Music"
	
	--sound volume (integer) : the output volume for the device (0 = minimum, 100 = maximum)
	if (get sound volume) < 100 then
		set music_volume to (round (get sound volume) / 5 rounding down) * 5 + 5
	else
		set music_volume to 100
	end if
	set sound volume to music_volume
	
	display notification "􀊨 " & (sound volume) & "%" subtitle "Music Helper"
end tell