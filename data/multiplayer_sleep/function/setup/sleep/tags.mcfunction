execute unless entity @p[tag=MultiplayerSleep.IsSleeping] as @a if score @s MultiplayerSleep.Sleep matches 1.. run tag @s add MultiplayerSleep.IsSleeping
execute as @p[tag=MultiplayerSleep.IsSleeping] if score @s MultiplayerSleep.Sleep matches 1.. run tag @s remove MultiplayerSleep.IsAwake
execute as @p[tag=MultiplayerSleep.IsSleeping] if score @s MultiplayerSleep.Sleep matches 0 run tag @s add MultiplayerSleep.IsAwake
execute as @p[tag=MultiplayerSleep.IsSleeping] if score @s MultiplayerSleep.Sleep matches 0 run tag @s remove MultiplayerSleep.IsSleeping