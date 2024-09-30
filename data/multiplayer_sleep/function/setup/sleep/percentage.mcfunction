#Equation:
execute store result score PlayersNeeded MultiplayerSleep.PlayerCount run scoreboard players get Number MultiplayerSleep.PlayerCount
execute run scoreboard players operation PlayersNeeded MultiplayerSleep.PlayerCount *= Percent MultiplayerSleep.Number
execute run scoreboard players operation PlayersNeeded MultiplayerSleep.PlayerCount /= 100 MultiplayerSleep.Number

#Change Percentage:
execute store result score Percent MultiplayerSleep.Number run scoreboard players get Percent.Number MultiplayerSleep.Number
execute if score Percent MultiplayerSleep.Number matches 101.. run scoreboard players set TimerSet MultiplayerSleep.Number 50