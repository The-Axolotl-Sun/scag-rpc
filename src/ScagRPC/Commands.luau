-- Modules

const Properties = require("@self/Properties")
const Types = require("@self/Types")
const Presets = require("@self/Presets")

-- Constants

const SCAG_TAG = "[SJPT]:"
const Rand = Random.new()

-- Local methods

local function FormatCommand(command: Types.Commands, ...: string): string
	local output = `{SCAG_TAG}{command}`
	for _, str in {...} do
		str = string.gsub(str, ",", ",,") -- Escape commas
		output ..= `,{str}`
	end
	return output
end

local function Output(command: Types.Commands, ...: string): ()
	local formatted = FormatCommand(command, ...)
	print(formatted)
end

--[=[
	@class ScagCommands
	A collection of commands that can be sent to ScagJPT. These commands are used to communicate with the ScagJPT system and trigger specific actions or responses.
]=]
local ScagCommands = {}

--[=[
	@within ScagCommands

	Creates a speech bubble over Scag's head with the given text.

	You can customize the text using the BBCode formatting system.
	- `[b]bold[/b]` for bold text
	- `[i]italic[/i]` for italic text
	- `[u]underline[/u]` for underlined text
	- `[color=red]red text[/color]` for colored text
	- `[size=20]large text[/size]` for larger text

	```lua
	ScagRPC.Commands.Say("hello!!")
	task.wait(2)
	ScagRPC.Commands.Say("i am scag!")
	task.wait(1)
	ScagRPC.Commands.Say("this is [b]SOOOO[/b] cool!")
	```
]=]
function ScagCommands.Say(text: string): ()
	Output("say", text)
end

--[=[
	@private
	@within ScagCommands

	Does the same action as [ScagCommands.Say], but is used internally by The Axolotl Sun to say preset lines of dialogue.

	While not intended for public use, you can view [Presets.Say] to see the available preset lines of dialogue.

	```lua
	local Humanoid = script.Parent:WaitForChild("Humanoid")

	function OnDeath()
		ScagRPC.Commands.SayPreset(Presets.Say.player_died)
	end

	Humanoid.Died:Connect(OnDeath)
	```
]=]
function ScagCommands.SayPreset(presetId: string): ()
	Output("say", presetId)
end

--[=[
	@within ScagCommands

	Flings Scag with a given force, or randomly if no force is provided.

	```lua
	-- Fling in a specific direction
	ScagRPC.Commands.Fling(Vector2.new(10, 10))

	-- Fling in a random direction
	ScagRPC.Commands.Fling()
	```
]=]
function ScagCommands.Fling(velocity: Vector2?): ()
	local constructed: Vector2 = Vector2.zero
	if not velocity then
		const force = Rand:NextInteger(2, 6)
		const angle = Rand:NextNumber(0, 2 * math.pi)
		constructed = Vector2.new(math.cos(angle) * force, math.sin(angle) * force)
	else
		constructed = velocity
	end

	Output("fling", tostring(constructed.X), tostring(constructed.Y))
end

return ScagCommands