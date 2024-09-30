execute unless entity @p[tag=MultiplayerSleep.IsAwake] if score SkipTime MultiplayerSleep.Sleep matches -3 run scoreboard players set SkipTime MultiplayerSleep.Sleep -4
execute if score SkipTime MultiplayerSleep.Sleep matches -4 run gamerule playersSleepingPercentage 100
execute if score SkipTime MultiplayerSleep.Sleep matches -4 run scoreboard players set Outcome MultiplayerSleep.Vote -1