#Skip Time:
execute unless entity @p[tag=MultiplayerSleep.IsAwake] run scoreboard players set SkipTime MultiplayerSleep.Sleep -1
execute if score SkipTime MultiplayerSleep.Sleep matches -1 run gamerule playersSleepingPercentage 1

#Reset Scoreboards:
execute unless entity @p[tag=MultiplayerSleep.IsAwake] if score SkipTime MultiplayerSleep.Sleep matches -1 run scoreboard players set SkipTime MultiplayerSleep.Sleep -2
execute if score SkipTime MultiplayerSleep.Sleep matches -2 run scoreboard players reset Text MultiplayerSleep.Sleep
execute if score SkipTime MultiplayerSleep.Sleep matches -2 run scoreboard players reset @a MultiplayerSleep.Vote
execute if score SkipTime MultiplayerSleep.Sleep matches -2 run scoreboard players set Global MultiplayerSleep.Vote 0

#Remove Tags:
execute if score SkipTime MultiplayerSleep.Sleep matches -2 as @a run tag @s remove MultiplayerSleep.Vote
execute if score SkipTime MultiplayerSleep.Sleep matches -2 as @a run tag @s remove MultiplayerSleep.Voted
execute if score SkipTime MultiplayerSleep.Sleep matches -2 as @a run tag @s remove MultiplayerSleep.IsAwake
execute if score SkipTime MultiplayerSleep.Sleep matches -2 as @a run tag @s remove MultiplayerSleep.IsSleeping

#Reset Gamerule:
execute unless entity @p[tag=MultiplayerSleep.IsAwake] if score SkipTime MultiplayerSleep.Sleep matches -2 run scoreboard players set SkipTime MultiplayerSleep.Sleep -3
execute if score SkipTime MultiplayerSleep.Sleep matches -3 run schedule function multiplayer_sleep:setup/sleep/revert_gamerule 5s append
execute if score SkipTime MultiplayerSleep.Sleep matches -3 run scoreboard players reset SkipTime MultiplayerSleep.Sleep