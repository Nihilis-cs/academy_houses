# Mise à jour des classements individuels

# Cette fonction met à jour tous les boards avec les statistiques actuelles des joueurs
# Calcule d'abord les classements corrects, puis affiche les résultats

# Calculer les classements avant l'affichage
function academy_houses:_internal/individual/compute_rankings

# ===== POKEMON ENREGISTRÉS =====
# Utilise les tags de classement calculés
# Top 1
execute as @e[tag=individualBoard,tag=registered,tag=rank1] run data modify entity @s text set value '[{"text":"1. ","color":"gold","bold":true},{"selector":"@a[tag=rank1_registered,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank1_registered,limit=1]","objective":"registered"},"color":"yellow"}]'

# Top 2-10 
execute as @e[tag=individualBoard,tag=registered,tag=rank2] run data modify entity @s text set value '[{"text":"2. ","color":"gray"},{"selector":"@a[tag=rank2_registered,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank2_registered,limit=1]","objective":"registered"},"color":"yellow"}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank3] run data modify entity @s text set value '[{"text":"3. ","color":"gray"},{"selector":"@a[tag=rank3_registered,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank3_registered,limit=1]","objective":"registered"},"color":"yellow"}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank4] run data modify entity @s text set value '[{"text":"4. ","color":"gray"},{"selector":"@a[tag=rank4_registered,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank4_registered,limit=1]","objective":"registered"},"color":"yellow"}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank5] run data modify entity @s text set value '[{"text":"5. ","color":"gray"},{"selector":"@a[tag=rank5_registered,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank5_registered,limit=1]","objective":"registered"},"color":"yellow"}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank6] run data modify entity @s text set value '[{"text":"6. ","color":"gray"},{"selector":"@a[tag=rank6_registered,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank6_registered,limit=1]","objective":"registered"},"color":"yellow"}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank7] run data modify entity @s text set value '[{"text":"7. ","color":"gray"},{"selector":"@a[tag=rank7_registered,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank7_registered,limit=1]","objective":"registered"},"color":"yellow"}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank8] run data modify entity @s text set value '[{"text":"8. ","color":"gray"},{"selector":"@a[tag=rank8_registered,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank8_registered,limit=1]","objective":"registered"},"color":"yellow"}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank9] run data modify entity @s text set value '[{"text":"9. ","color":"gray"},{"selector":"@a[tag=rank9_registered,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank9_registered,limit=1]","objective":"registered"},"color":"yellow"}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank10] run data modify entity @s text set value '[{"text":"10. ","color":"gray"},{"selector":"@a[tag=rank10_registered,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank10_registered,limit=1]","objective":"registered"},"color":"yellow"}]'


# ===== SHINY CAPTURÉS =====
# Utilise les tags de classement calculés
# Top 1
execute as @e[tag=individualBoard,tag=shiny,tag=rank1] run data modify entity @s text set value '[{"text":"1. ","color":"gold","bold":true},{"selector":"@a[tag=rank1_shiny,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank1_shiny,limit=1]","objective":"shiny_caught"},"color":"aqua"}]'

# Top 2-10
execute as @e[tag=individualBoard,tag=shiny,tag=rank2] run data modify entity @s text set value '[{"text":"2. ","color":"gray"},{"selector":"@a[tag=rank2_shiny,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank2_shiny,limit=1]","objective":"shiny_caught"},"color":"aqua"}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank3] run data modify entity @s text set value '[{"text":"3. ","color":"gray"},{"selector":"@a[tag=rank3_shiny,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank3_shiny,limit=1]","objective":"shiny_caught"},"color":"aqua"}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank4] run data modify entity @s text set value '[{"text":"4. ","color":"gray"},{"selector":"@a[tag=rank4_shiny,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank4_shiny,limit=1]","objective":"shiny_caught"},"color":"aqua"}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank5] run data modify entity @s text set value '[{"text":"5. ","color":"gray"},{"selector":"@a[tag=rank5_shiny,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank5_shiny,limit=1]","objective":"shiny_caught"},"color":"aqua"}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank6] run data modify entity @s text set value '[{"text":"6. ","color":"gray"},{"selector":"@a[tag=rank6_shiny,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank6_shiny,limit=1]","objective":"shiny_caught"},"color":"aqua"}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank7] run data modify entity @s text set value '[{"text":"7. ","color":"gray"},{"selector":"@a[tag=rank7_shiny,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank7_shiny,limit=1]","objective":"shiny_caught"},"color":"aqua"}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank8] run data modify entity @s text set value '[{"text":"8. ","color":"gray"},{"selector":"@a[tag=rank8_shiny,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank8_shiny,limit=1]","objective":"shiny_caught"},"color":"aqua"}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank9] run data modify entity @s text set value '[{"text":"9. ","color":"gray"},{"selector":"@a[tag=rank9_shiny,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank9_shiny,limit=1]","objective":"shiny_caught"},"color":"aqua"}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank10] run data modify entity @s text set value '[{"text":"10. ","color":"gray"},{"selector":"@a[tag=rank10_shiny,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank10_shiny,limit=1]","objective":"shiny_caught"},"color":"aqua"}]'


# ===== COMBATS GAGNÉS (Top 5) =====
# Utilise les tags de classement calculés
# Top 1
execute as @e[tag=individualBoard,tag=battle,tag=rank1] run data modify entity @s text set value '[{"text":"1. ","color":"gold","bold":true},{"selector":"@a[tag=rank1_battle,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank1_battle,limit=1]","objective":"battle_won"},"color":"red"}]'

# Top 2-5
execute as @e[tag=individualBoard,tag=battle,tag=rank2] run data modify entity @s text set value '[{"text":"2. ","color":"gray"},{"selector":"@a[tag=rank2_battle,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank2_battle,limit=1]","objective":"battle_won"},"color":"red"}]'

execute as @e[tag=individualBoard,tag=battle,tag=rank3] run data modify entity @s text set value '[{"text":"3. ","color":"gray"},{"selector":"@a[tag=rank3_battle,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank3_battle,limit=1]","objective":"battle_won"},"color":"red"}]'

execute as @e[tag=individualBoard,tag=battle,tag=rank4] run data modify entity @s text set value '[{"text":"4. ","color":"gray"},{"selector":"@a[tag=rank4_battle,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank4_battle,limit=1]","objective":"battle_won"},"color":"red"}]'

execute as @e[tag=individualBoard,tag=battle,tag=rank5] run data modify entity @s text set value '[{"text":"5. ","color":"gray"},{"selector":"@a[tag=rank5_battle,limit=1]"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=rank5_battle,limit=1]","objective":"battle_won"},"color":"red"}]'

# Gérer les rangs vides (quand il n'y a pas assez de joueurs)
function academy_houses:_internal/individual/handle_empty_ranks
