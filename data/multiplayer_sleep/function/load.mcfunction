#Scoreboards:
execute run scoreboard objectives add MultiplayerSleep.Sleep dummy
execute run scoreboard objectives add MultiplayerSleep.Vote dummy
execute run scoreboard objectives add Sleep.Vote trigger
execute run scoreboard objectives add MultiplayerSleep.PlayerCount dummy
execute run scoreboard objectives add MultiplayerSleep.Number dummy
execute run scoreboard objectives add MultiplayerSleep.AFK dummy
execute run scoreboard objectives add MultiplayerSleep.AFK.Pos.X dummy
execute run scoreboard objectives add MultiplayerSleep.AFK.Pos.Y dummy
execute run scoreboard objectives add MultiplayerSleep.AFK.Pos.Z dummy
execute run scoreboard objectives add MultiplayerSleep.AFK.Pos.X.Check dummy
execute run scoreboard objectives add MultiplayerSleep.AFK.Pos.Y.Check dummy
execute run scoreboard objectives add MultiplayerSleep.AFK.Pos.Z.Check dummy
execute run scoreboard objectives add MultiplayerSleep.AFK.Detection dummy

#Gamerules:
execute run gamerule playersSleepingPercentage 100

#Setup:
execute run scoreboard players set AFK.Timer.Number MultiplayerSleep.AFK 6000
execute run scoreboard players set Percent.Number MultiplayerSleep.Number 50
execute run scoreboard players set 100 MultiplayerSleep.Number 100

#Functions:
execute run schedule function multiplayer_sleep:setup/afk/check 5s