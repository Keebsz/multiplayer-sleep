#Player Count:
execute store result score Number MultiplayerSleep.PlayerCount if entity @e[type=player,gamemode=!spectator,gamemode=!creative,tag=!MultiplayerSleep.AFK]

#AFK Detection
execute run function multiplayer_sleep:setup/afk/detection
execute run function multiplayer_sleep:setup/afk/timer

#Percentage:
execute run function multiplayer_sleep:setup/sleep/percentage

#Sleeping:
execute as @a store result score @s MultiplayerSleep.Sleep run data get entity @s SleepTimer
execute run function multiplayer_sleep:setup/sleep/tags
execute if score @p[tag=MultiplayerSleep.IsSleeping] MultiplayerSleep.Sleep matches 1 run function multiplayer_sleep:setup/sleep/text
execute run function multiplayer_sleep:setup/sleep/vote/start


#Triggers:
execute run scoreboard players enable @a Sleep.Vote
execute run function multiplayer_sleep:setup/triggers/vote