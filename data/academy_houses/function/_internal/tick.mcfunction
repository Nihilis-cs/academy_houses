# Timer pour la mise à jour automatique des boards individuels (toutes les 5 minutes)
scoreboard players add #timer updateTimer 1
execute if score #timer updateTimer >= #updateInterval updateTimer run function academy_houses:_internal/individual/update_boards
execute if score #timer updateTimer >= #updateInterval updateTimer run scoreboard players set #timer updateTimer 0