#Change Timer (Default 5 Minutes/6000 ticks):
execute store result score Timer MultiplayerSleep.AFK run scoreboard players get AFK.Timer.Number MultiplayerSleep.AFK
execute if score Timer MultiplayerSleep.AFK matches ..0 run scoreboard players get AFK.Timer.Number MultiplayerSleep.AFK