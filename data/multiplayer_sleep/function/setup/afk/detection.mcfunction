#Position:
execute as @a store result score @s MultiplayerSleep.AFK.Pos.X run data get entity @s Pos[0] 100
execute as @a store result score @s MultiplayerSleep.AFK.Pos.Y run data get entity @s Pos[1] 100
execute as @a store result score @s MultiplayerSleep.AFK.Pos.Z run data get entity @s Pos[2] 100

#Detection Check:
execute as @a unless score @s MultiplayerSleep.AFK.Pos.X.Check = @s MultiplayerSleep.AFK.Pos.X run tag @s remove MultiplayerSleep.AFK.Check
execute as @a unless score @s MultiplayerSleep.AFK.Pos.Y.Check = @s MultiplayerSleep.AFK.Pos.X run tag @s remove MultiplayerSleep.AFK.Check
execute as @a unless score @s MultiplayerSleep.AFK.Pos.Z.Check = @s MultiplayerSleep.AFK.Pos.X run tag @s remove MultiplayerSleep.AFK.Check

execute as @a if score @s MultiplayerSleep.AFK.Pos.X.Check = @s MultiplayerSleep.AFK.Pos.X run tag @s add MultiplayerSleep.AFK.Check
execute as @a if score @s MultiplayerSleep.AFK.Pos.Y.Check = @s MultiplayerSleep.AFK.Pos.X run tag @s add MultiplayerSleep.AFK.Check
execute as @a if score @s MultiplayerSleep.AFK.Pos.Z.Check = @s MultiplayerSleep.AFK.Pos.X run tag @s add MultiplayerSleep.AFK.Check

#Add and Remove Tags:
execute as @a[tag=MultiplayerSleep.AFK.Check] run scoreboard players set @s MultiplayerSleep.AFK.Detection 1
execute as @a[tag=!MultiplayerSleep.AFK.Check] run scoreboard players set @s MultiplayerSleep.AFK.Detection 0 
execute as @a[tag=MultiplayerSleep.AFK.Check] run scoreboard players add @s MultiplayerSleep.AFK 1

#Timer:
execute as @a if score @s MultiplayerSleep.AFK = Timer MultiplayerSleep.AFK run tag @s add MultiplayerSleep.AFK
execute as @a if score @s MultiplayerSleep.AFK > Timer MultiplayerSleep.AFK run scoreboard players operation @s MultiplayerSleep.AFK = Timer MultiplayerSleep.AFK
execute as @a if entity @s[tag=!MultiplayerSleep.AFK.Check] run scoreboard players set @s MultiplayerSleep.AFK 0
execute as @a if score @s MultiplayerSleep.AFK matches 0 run tag @s remove MultiplayerSleep.AFK