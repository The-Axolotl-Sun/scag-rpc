--!strict
--!optimize 2

-- Services

local RunService = game:GetService("RunService")

-- Modules

const Properties = require("@self/Properties")
const Commands = require("@self/Commands")
const Server = require("@self/Server")
const Client = require("@self/Client")

-- Class

--[=[
	@class ScagRPC
	Adds functions to communicate with ScagJPT.
]=]
local ScagRPC = {}

--[=[
	@within ScagRPC
	@prop Commands ScagCommands
	A collection of commands that can be sent to ScagJPT. These commands are used to communicate with the ScagJPT system and trigger specific actions or responses.
]=]
ScagRPC.Commands = Commands


if Properties.Initialize then
	if RunService:IsServer() then
		ScagRPC.Server.initialize()
	else
		ScagRPC.Client.initialize()
	end
end

return ScagRPC