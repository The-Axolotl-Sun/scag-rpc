# Server

You can have the server send messages to ScagJPT using a [RemoteEvent](https://create.roblox.com/docs/reference/engine/classes/RemoteEvent). This is useful for sending messages to ScagJPT when a player dies, for example.

## Server Code
```lua
-- Script

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ScagRPC = require(ReplicatedStorage.Modules.ScagRPC)

local RemoteEvent: RemoteEvent = ReplicatedStorage.Remotes.MyEvent

function OnPlayerAdded(player: Player)
	RemoteEvent:FireAllClients(player)
end

game.Players.PlayerAdded:Connect(OnPlayerAdded)
```

## Client Code
```lua
-- LocalScript
```