execute as @a[tag=MultiplayerSleep.Voted] if score @s Sleep.Vote matches 1 run function multiplayer_sleep:setup/text/already_voted
execute as @a[tag=!MultiplayerSleep.Voted] if score @s Sleep.Vote matches 1 run scoreboard players set @s MultiplayerSleep.Vote -1
execute as @a if score @s Sleep.Vote matches 1.. run scoreboard players reset @s Sleep.Vote


