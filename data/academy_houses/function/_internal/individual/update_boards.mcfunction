# Mise à jour des classements individuels

# Cette fonction met à jour tous les boards avec les statistiques actuelles des joueurs

# ===== POKEMON ENREGISTRÉS =====
# Top 1
execute as @e[tag=individualBoard,tag=registered,tag=rank1] run data modify entity @s text set value '[{"text":"1. ","color":"gold","bold":true},{"selector":"@a[scores={registered=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={registered=1..},limit=1,sort=random]","objective":"registered"},"color":"yellow"}]'

# Top 2-10
execute as @e[tag=individualBoard,tag=registered,tag=rank2] run data modify entity @s text set value '[{"text":"2. ","color":"gray"},{"selector":"@a[scores={registered=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={registered=1..},limit=1,sort=random]","objective":"registered"},"color":"yellow"}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank3] run data modify entity @s text set value '[{"text":"3. ","color":"gray"},{"selector":"@a[scores={registered=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={registered=1..},limit=1,sort=random]","objective":"registered"},"color":"yellow"}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank4] run data modify entity @s text set value '[{"text":"4. ","color":"gray"},{"selector":"@a[scores={registered=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={registered=1..},limit=1,sort=random]","objective":"registered"},"color":"yellow"}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank5] run data modify entity @s text set value '[{"text":"5. ","color":"gray"},{"selector":"@a[scores={registered=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={registered=1..},limit=1,sort=random]","objective":"registered"},"color":"yellow"}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank6] run data modify entity @s text set value '[{"text":"6. ","color":"gray"},{"selector":"@a[scores={registered=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={registered=1..},limit=1,sort=random]","objective":"registered"},"color":"yellow"}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank7] run data modify entity @s text set value '[{"text":"7. ","color":"gray"},{"selector":"@a[scores={registered=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={registered=1..},limit=1,sort=random]","objective":"registered"},"color":"yellow"}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank8] run data modify entity @s text set value '[{"text":"8. ","color":"gray"},{"selector":"@a[scores={registered=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={registered=1..},limit=1,sort=random]","objective":"registered"},"color":"yellow"}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank9] run data modify entity @s text set value '[{"text":"9. ","color":"gray"},{"selector":"@a[scores={registered=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={registered=1..},limit=1,sort=random]","objective":"registered"},"color":"yellow"}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank10] run data modify entity @s text set value '[{"text":"10. ","color":"gray"},{"selector":"@a[scores={registered=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={registered=1..},limit=1,sort=random]","objective":"registered"},"color":"yellow"}]'


# ===== SHINY CAPTURÉS =====
# Top 1
execute as @e[tag=individualBoard,tag=shiny,tag=rank1] run data modify entity @s text set value '[{"text":"1. ","color":"gold","bold":true},{"selector":"@a[scores={shiny_caught=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={shiny_caught=1..},limit=1,sort=random]","objective":"shiny_caught"},"color":"aqua"}]'

# Top 2-10
execute as @e[tag=individualBoard,tag=shiny,tag=rank2] run data modify entity @s text set value '[{"text":"2. ","color":"gray"},{"selector":"@a[scores={shiny_caught=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={shiny_caught=1..},limit=1,sort=random]","objective":"shiny_caught"},"color":"aqua"}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank3] run data modify entity @s text set value '[{"text":"3. ","color":"gray"},{"selector":"@a[scores={shiny_caught=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={shiny_caught=1..},limit=1,sort=random]","objective":"shiny_caught"},"color":"aqua"}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank4] run data modify entity @s text set value '[{"text":"4. ","color":"gray"},{"selector":"@a[scores={shiny_caught=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={shiny_caught=1..},limit=1,sort=random]","objective":"shiny_caught"},"color":"aqua"}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank5] run data modify entity @s text set value '[{"text":"5. ","color":"gray"},{"selector":"@a[scores={shiny_caught=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={shiny_caught=1..},limit=1,sort=random]","objective":"shiny_caught"},"color":"aqua"}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank6] run data modify entity @s text set value '[{"text":"6. ","color":"gray"},{"selector":"@a[scores={shiny_caught=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={shiny_caught=1..},limit=1,sort=random]","objective":"shiny_caught"},"color":"aqua"}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank7] run data modify entity @s text set value '[{"text":"7. ","color":"gray"},{"selector":"@a[scores={shiny_caught=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={shiny_caught=1..},limit=1,sort=random]","objective":"shiny_caught"},"color":"aqua"}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank8] run data modify entity @s text set value '[{"text":"8. ","color":"gray"},{"selector":"@a[scores={shiny_caught=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={shiny_caught=1..},limit=1,sort=random]","objective":"shiny_caught"},"color":"aqua"}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank9] run data modify entity @s text set value '[{"text":"9. ","color":"gray"},{"selector":"@a[scores={shiny_caught=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={shiny_caught=1..},limit=1,sort=random]","objective":"shiny_caught"},"color":"aqua"}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank10] run data modify entity @s text set value '[{"text":"10. ","color":"gray"},{"selector":"@a[scores={shiny_caught=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={shiny_caught=1..},limit=1,sort=random]","objective":"shiny_caught"},"color":"aqua"}]'


# ===== COMBATS GAGNÉS (Top 5) =====
# Top 1
execute as @e[tag=individualBoard,tag=battle,tag=rank1] run data modify entity @s text set value '[{"text":"1. ","color":"gold","bold":true},{"selector":"@a[scores={battle_won=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={battle_won=1..},limit=1,sort=random]","objective":"battle_won"},"color":"red"}]'

# Top 2-5
execute as @e[tag=individualBoard,tag=battle,tag=rank2] run data modify entity @s text set value '[{"text":"2. ","color":"gray"},{"selector":"@a[scores={battle_won=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={battle_won=1..},limit=1,sort=random]","objective":"battle_won"},"color":"red"}]'

execute as @e[tag=individualBoard,tag=battle,tag=rank3] run data modify entity @s text set value '[{"text":"3. ","color":"gray"},{"selector":"@a[scores={battle_won=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={battle_won=1..},limit=1,sort=random]","objective":"battle_won"},"color":"red"}]'

execute as @e[tag=individualBoard,tag=battle,tag=rank4] run data modify entity @s text set value '[{"text":"4. ","color":"gray"},{"selector":"@a[scores={battle_won=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={battle_won=1..},limit=1,sort=random]","objective":"battle_won"},"color":"red"}]'

execute as @e[tag=individualBoard,tag=battle,tag=rank5] run data modify entity @s text set value '[{"text":"5. ","color":"gray"},{"selector":"@a[scores={battle_won=1..},limit=1,sort=random]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[scores={battle_won=1..},limit=1,sort=random]","objective":"battle_won"},"color":"red"}]'
