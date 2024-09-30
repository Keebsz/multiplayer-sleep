execute run schedule function multiplayer_sleep:setup/afk/check 5s

execute as @a run scoreboard players operation @s MultiplayerSleep.AFK.Pos.X.Check = @s MultiplayerSleep.AFK.Pos.X
execute as @a run scoreboard players operation @s MultiplayerSleep.AFK.Pos.Y.Check = @s MultiplayerSleep.AFK.Pos.Y
execute as @a run scoreboard players operation @s MultiplayerSleep.AFK.Pos.Z.Check = @s MultiplayerSleep.AFK.Pos.Z