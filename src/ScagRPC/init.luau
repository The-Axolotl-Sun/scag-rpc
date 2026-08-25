--!strict
--!optimize 2

-- Modules

const Presets = require("@self/Presets")
const Types = require("@self/Types")

-- Constants

const SCAG_TAG = "[SJPT]:"
const Rand = Random.new()

-- Local functions

local function FormatCommand(command: Types.Commands, ...: string): string
	local output = `{SCAG_TAG}{command}`
	for _, str in {...} do
		str = string.gsub(str, ",", ",,") -- Escape commas
		output ..= `,{str}`
	end
	return output
end

local function Output(command: Types.Commands, ...: string): string
	local formatted = FormatCommand(command, ...)
	print(formatted)
	return formatted
end

-- Class

--[=[
	@class ScagRPC
	Adds functions to communicate with ScagJPT.
]=]
local ScagRPC = {}

--[=[
	@within ScagRPC

	Creates a speech bubble over Scag's head with the given text.

	You can customize the text using the BBCode formatting system.
	- `[b]bold[/b]` for bold text
	- `[i]italic[/i]` for italic text
	- `[u]underline[/u]` for underlined text
	- `[color=red]red text[/color]` for colored text
	- `[size=20]large text[/size]` for larger text

	```lua
	ScagRPC.Say("hello!!")
	task.wait(2)
	ScagRPC.Say("i am scag!")
	task.wait(1)
	ScagRPC.Say("this is [b]SOOOO[/b] cool!")
	```
]=]
function ScagRPC.Say(text: string): string
	return Output("say", text)
end

--[=[
	@private
	@within ScagRPC

	Does the same action as [ScagRPC.Say], but is used internally by The Axolotl Sun to say preset lines of dialogue.

	While not intended for public use, you can view [Presets.Say] to see the available preset lines of dialogue.

	```lua
	local Humanoid = script.Parent:WaitForChild("Humanoid")

	function OnDeath()
		ScagRPC.SayPreset(Presets.Say.player_died)
	end

	Humanoid.Died:Connect(OnDeath)
	```
]=]
function ScagRPC.SayPreset(presetId: string): string
	assert((Presets.Say :: {[string]: string})[presetId], Output("error", `Invalid SayPreset ID: {presetId}`))
	return Output("say_preset", (Presets.Say :: {[string]: string})[presetId])
end

--[=[
	@private
	@within ScagRPC

	Used internally by The Axolotl Sun to set preset images located within ScagJPTs files.

	While not intended for public use, you can view [Presets.SetImage] to see the available preset image names.

	```lua
	local makos = workspace:FindFirstChild("NotMakos")

	if makos then
		ScagRPC.SetImagePreset(Presets.SetImage.makos)
	end
	```
]=]
function ScagRPC.SetImagePreset(presetId: string): string
	assert((Presets.SetImage :: {[string]: string})[presetId], Output("error", `Invalid SetImagePreset ID: {presetId}`))
	return Output("set_image_preset", (Presets.SetImage :: {[string]: string})[presetId])
end

--[=[
	@private
	@within ScagRPC

	Used internally by The Axolotl Sun to set preset images located within ScagJPTs files.

	While not intended for public use, you can view [Presets.SetImage] to see the available preset image names.

	```lua
	local makos = workspace:FindFirstChild("NotMakos")

	if makos then
		ScagRPC.SetImagePreset(Presets.SetImage.makos)
	end
	```
]=]
function ScagRPC.PlayAudioPreset(presetId: string): string
	assert((Presets.PlayAudio :: {[string]: string})[presetId], Output("error", `Invalid PlayAudioPreset ID: {presetId}`))
	return Output("play_audio_preset", (Presets.PlayAudio :: {[string]: string})[presetId])
end

--[=[
	@within ScagRPC

	Sends an error to Scag to display.

	```lua
	ScagRPC.Error("This is an error!")
	```
]=]
function ScagRPC.Error(text: string): string
	return Output("error", text)
end

--[=[
	@within ScagRPC

	Hits Scag in a given position, or randomly if no position is provided. 
	Provided positions are scaled and offset based on Scag's current size and location on screen.

	```lua
	-- Hit in a specific position
	ScagRPC.Hit(Vector2.new(10, 10))

	-- Hit in a random position
	ScagRPC.Hit()
	```
]=]
function ScagRPC.Hit(position: Vector2?): string
	local constructed: Vector2 = Vector2.zero
	if not position then
		constructed = Vector2.new(Rand:NextInteger(0, 100), Rand:NextInteger(0, 200))
	else
		constructed = position
	end

	return Output("hit", tostring(constructed.X), tostring(constructed.Y))
end

--[=[
	@within ScagRPC

	Flings Scag with a given force, or randomly if no force is provided.

	```lua
	-- Fling in a specific direction
	ScagRPC.Fling(Vector2.new(10, 10))

	-- Fling in a random direction
	ScagRPC.Fling()
	```
]=]
function ScagRPC.Fling(velocity: Vector2?): string
	local constructed: Vector2 = Vector2.zero
	if not velocity then
		const force = Rand:NextInteger(2, 6)
		const angle = Rand:NextNumber(0, 2 * math.pi)
		constructed = Vector2.new(math.cos(angle) * force, math.sin(angle) * force)
	else
		constructed = velocity
	end

	return Output("fling", tostring(constructed.X), tostring(constructed.Y))
end

--[=[
	@within ScagRPC

	Provides a waypoint for Scag to walk to in a given position, or randomly if no position is provided. 
	Provided positions are scaled based on the user's screen size.

	```lua
	-- Set a waypoint in a specific position
	ScagRPC.SetWaypoint(Vector2.new(10, 10), 300)

	-- Set a waypoint in a random position
	ScagRPC.SetWaypoint()
	```
]=]
function ScagRPC.WalkToPosition(position: Vector2?, speed: number?): string
	local constructed: Vector2 = Vector2.zero
	if not position then
		--this will be scaled in Godot to the user's actual screen size
		constructed = Vector2.new(Rand:NextInteger(0, 1920), Rand:NextInteger(0, 1080))
	else
		constructed = position
	end
	
	return Output("walk_to_position", tostring(constructed.X), tostring(constructed.Y), tostring(speed or 300))
end

return ScagRPC
