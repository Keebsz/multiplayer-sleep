#Remove Tags:
execute as @a run tag @s remove MultiplayerSleep.Vote
execute as @a run tag @s remove MultiplayerSleep.Voted
execute as @a run tag @s remove MultiplayerSleep.IsSleeping
execute as @a run tag @s remove MultiplayerSleep.IsAwake

#Text:
execute run function multiplayer_sleep:setup/text/vote_cancelled

#Reset Scoreboards:
execute run scoreboard players reset SkipTime MultiplayerSleep.Sleep
execute run scoreboard players reset Text MultiplayerSleep.Sleep
execute run scoreboard players set Global MultiplayerSleep.Vote 0
execute run scoreboard players reset @a MultiplayerSleep.Vote

#Reset Gamerule:
execute run gamerule playersSleepingPercentage 100