execute if score @p[tag=MultiplayerSleep.IsSleeping] MultiplayerSleep.Sleep matches 1 run scoreboard players add Text MultiplayerSleep.Sleep 1
execute if score Text MultiplayerSleep.Sleep matches 1 run function multiplayer_sleep:setup/text/vote
execute if score Text MultiplayerSleep.Sleep matches 1 run scoreboard players set Text MultiplayerSleep.Sleep 2