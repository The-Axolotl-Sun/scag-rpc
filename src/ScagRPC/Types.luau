--[=[
	@type Commands "say" | "fling" | "say_preset" | "set_image_preset" | "play_audio_preset"
	@within ScagRPC
	The list of commands that can be sent to ScagJPT.
]=]
export type Commands = "say" | "say_preset" | "set_image_preset" | "play_audio_preset" | "error" | 
"fling" | "hit" | "walk_to_position"

return {}
