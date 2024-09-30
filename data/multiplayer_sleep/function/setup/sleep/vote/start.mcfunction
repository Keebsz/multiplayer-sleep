#Tags Add:
execute as @a[tag=!MultiplayerSleep.Voted] if score @s MultiplayerSleep.Sleep matches 1.. run scoreboard players set @s MultiplayerSleep.Vote -1
execute as @a[tag=!MultiplayerSleep.Voted] if score @s MultiplayerSleep.Vote matches -1 run tag @s add MultiplayerSleep.Vote
execute as @a if score @s MultiplayerSleep.Vote matches -1 run tag @s add MultiplayerSleep.Voted
execute as @a if score @s MultiplayerSleep.Vote matches -1 run tag @s add MultiplayerSleep.Voted.Check

#Global:
execute unless entity @a[tag=MultiplayerSleep.IsAwake] if entity @p[tag=MultiplayerSleep.Vote] run scoreboard players add Global MultiplayerSleep.Vote 1
execute as @a[tag=MultiplayerSleep.Voted] run tag @s remove MultiplayerSleep.Vote
execute as @a[tag=MultiplayerSleep.Vote] run scoreboard players operation @s MultiplayerSleep.Vote = Global MultiplayerSleep.Vote
execute as @a if entity @s[tag=MultiplayerSleep.Voted.Check] run function multiplayer_sleep:setup/text/actionbar
execute as @a[tag=MultiplayerSleep.Voted] run tag @s remove MultiplayerSleep.Voted.Check
execute as @a if entity @a[tag=MultiplayerSleep.IsAwake] run tag @s remove MultiplayerSleep.Voted

#Outcome:
execute if entity @a[tag=MultiplayerSleep.Voted] run scoreboard players set Outcome MultiplayerSleep.Vote 0
execute if entity @p[tag=MultiplayerSleep.IsSleeping] unless score Global MultiplayerSleep.Vote < PlayersNeeded MultiplayerSleep.PlayerCount run function multiplayer_sleep:setup/sleep/vote/success
execute if entity @p[tag=MultiplayerSleep.IsAwake] unless score Outcome MultiplayerSleep.Vote matches -1 run function multiplayer_sleep:setup/sleep/vote/cancelled