# Mise à jour des classements individuels avec données persistantes
# Ce système utilise les noms et scores sauvegardés pour afficher les joueurs même hors ligne

# Cette fonction met à jour tous les boards avec les statistiques sauvegardées
# Calcule d'abord les classements corrects, puis affiche les résultats

# Calculer les classements avant l'affichage
function academy_houses:_internal/individual/compute_rankings

# ===== POKEMON ENREGISTRÉS =====
# Utilise les données stockées au lieu des sélecteurs JSON

# Top 1 - Pas toujours le rang 1 si le storage est vide
execute unless data storage academy_houses:rankings registered.rank1.name as @e[tag=individualBoard,tag=registered,tag=rank1] run data modify entity @s text set value '[{"text":"1. ","color":"gold","bold":true},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings registered.rank1.name as @e[tag=individualBoard,tag=registered,tag=rank1] run function academy_houses:_internal/individual/display_rank_registered with {rank:1}

# Top 2-10
execute unless data storage academy_houses:rankings registered.rank2.name as @e[tag=individualBoard,tag=registered,tag=rank2] run data modify entity @s text set value '[{"text":"2. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings registered.rank2.name as @e[tag=individualBoard,tag=registered,tag=rank2] run function academy_houses:_internal/individual/display_rank_registered with {rank:2}

execute unless data storage academy_houses:rankings registered.rank3.name as @e[tag=individualBoard,tag=registered,tag=rank3] run data modify entity @s text set value '[{"text":"3. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings registered.rank3.name as @e[tag=individualBoard,tag=registered,tag=rank3] run function academy_houses:_internal/individual/display_rank_registered with {rank:3}

execute unless data storage academy_houses:rankings registered.rank4.name as @e[tag=individualBoard,tag=registered,tag=rank4] run data modify entity @s text set value '[{"text":"4. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings registered.rank4.name as @e[tag=individualBoard,tag=registered,tag=rank4] run function academy_houses:_internal/individual/display_rank_registered with {rank:4}

execute unless data storage academy_houses:rankings registered.rank5.name as @e[tag=individualBoard,tag=registered,tag=rank5] run data modify entity @s text set value '[{"text":"5. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings registered.rank5.name as @e[tag=individualBoard,tag=registered,tag=rank5] run function academy_houses:_internal/individual/display_rank_registered with {rank:5}

execute unless data storage academy_houses:rankings registered.rank6.name as @e[tag=individualBoard,tag=registered,tag=rank6] run data modify entity @s text set value '[{"text":"6. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings registered.rank6.name as @e[tag=individualBoard,tag=registered,tag=rank6] run function academy_houses:_internal/individual/display_rank_registered with {rank:6}

execute unless data storage academy_houses:rankings registered.rank7.name as @e[tag=individualBoard,tag=registered,tag=rank7] run data modify entity @s text set value '[{"text":"7. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings registered.rank7.name as @e[tag=individualBoard,tag=registered,tag=rank7] run function academy_houses:_internal/individual/display_rank_registered with {rank:7}

execute unless data storage academy_houses:rankings registered.rank8.name as @e[tag=individualBoard,tag=registered,tag=rank8] run data modify entity @s text set value '[{"text":"8. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings registered.rank8.name as @e[tag=individualBoard,tag=registered,tag=rank8] run function academy_houses:_internal/individual/display_rank_registered with {rank:8}

execute unless data storage academy_houses:rankings registered.rank9.name as @e[tag=individualBoard,tag=registered,tag=rank9] run data modify entity @s text set value '[{"text":"9. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings registered.rank9.name as @e[tag=individualBoard,tag=registered,tag=rank9] run function academy_houses:_internal/individual/display_rank_registered with {rank:9}

execute unless data storage academy_houses:rankings registered.rank10.name as @e[tag=individualBoard,tag=registered,tag=rank10] run data modify entity @s text set value '[{"text":"10. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings registered.rank10.name as @e[tag=individualBoard,tag=registered,tag=rank10] run function academy_houses:_internal/individual/display_rank_registered with {rank:10}

# ===== SHINY CAPTURÉS =====
execute unless data storage academy_houses:rankings shiny.rank1.name as @e[tag=individualBoard,tag=shiny,tag=rank1] run data modify entity @s text set value '[{"text":"1. ","color":"gold","bold":true},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings shiny.rank1.name as @e[tag=individualBoard,tag=shiny,tag=rank1] run function academy_houses:_internal/individual/display_rank_shiny with {rank:1}

execute unless data storage academy_houses:rankings shiny.rank2.name as @e[tag=individualBoard,tag=shiny,tag=rank2] run data modify entity @s text set value '[{"text":"2. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings shiny.rank2.name as @e[tag=individualBoard,tag=shiny,tag=rank2] run function academy_houses:_internal/individual/display_rank_shiny with {rank:2}

execute unless data storage academy_houses:rankings shiny.rank3.name as @e[tag=individualBoard,tag=shiny,tag=rank3] run data modify entity @s text set value '[{"text":"3. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings shiny.rank3.name as @e[tag=individualBoard,tag=shiny,tag=rank3] run function academy_houses:_internal/individual/display_rank_shiny with {rank:3}

execute unless data storage academy_houses:rankings shiny.rank4.name as @e[tag=individualBoard,tag=shiny,tag=rank4] run data modify entity @s text set value '[{"text":"4. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings shiny.rank4.name as @e[tag=individualBoard,tag=shiny,tag=rank4] run function academy_houses:_internal/individual/display_rank_shiny with {rank:4}

execute unless data storage academy_houses:rankings shiny.rank5.name as @e[tag=individualBoard,tag=shiny,tag=rank5] run data modify entity @s text set value '[{"text":"5. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings shiny.rank5.name as @e[tag=individualBoard,tag=shiny,tag=rank5] run function academy_houses:_internal/individual/display_rank_shiny with {rank:5}

execute unless data storage academy_houses:rankings shiny.rank6.name as @e[tag=individualBoard,tag=shiny,tag=rank6] run data modify entity @s text set value '[{"text":"6. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings shiny.rank6.name as @e[tag=individualBoard,tag=shiny,tag=rank6] run function academy_houses:_internal/individual/display_rank_shiny with {rank:6}

execute unless data storage academy_houses:rankings shiny.rank7.name as @e[tag=individualBoard,tag=shiny,tag=rank7] run data modify entity @s text set value '[{"text":"7. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings shiny.rank7.name as @e[tag=individualBoard,tag=shiny,tag=rank7] run function academy_houses:_internal/individual/display_rank_shiny with {rank:7}

execute unless data storage academy_houses:rankings shiny.rank8.name as @e[tag=individualBoard,tag=shiny,tag=rank8] run data modify entity @s text set value '[{"text":"8. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings shiny.rank8.name as @e[tag=individualBoard,tag=shiny,tag=rank8] run function academy_houses:_internal/individual/display_rank_shiny with {rank:8}

execute unless data storage academy_houses:rankings shiny.rank9.name as @e[tag=individualBoard,tag=shiny,tag=rank9] run data modify entity @s text set value '[{"text":"9. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings shiny.rank9.name as @e[tag=individualBoard,tag=shiny,tag=rank9] run function academy_houses:_internal/individual/display_rank_shiny with {rank:9}

execute unless data storage academy_houses:rankings shiny.rank10.name as @e[tag=individualBoard,tag=shiny,tag=rank10] run data modify entity @s text set value '[{"text":"10. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings shiny.rank10.name as @e[tag=individualBoard,tag=shiny,tag=rank10] run function academy_houses:_internal/individual/display_rank_shiny with {rank:10}

# ===== COMBATS GAGNÉS (Top 5) =====
execute unless data storage academy_houses:rankings battle.rank1.name as @e[tag=individualBoard,tag=battle,tag=rank1] run data modify entity @s text set value '[{"text":"1. ","color":"gold","bold":true},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings battle.rank1.name as @e[tag=individualBoard,tag=battle,tag=rank1] run function academy_houses:_internal/individual/display_rank_battle with {rank:1}

execute unless data storage academy_houses:rankings battle.rank2.name as @e[tag=individualBoard,tag=battle,tag=rank2] run data modify entity @s text set value '[{"text":"2. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings battle.rank2.name as @e[tag=individualBoard,tag=battle,tag=rank2] run function academy_houses:_internal/individual/display_rank_battle with {rank:2}

execute unless data storage academy_houses:rankings battle.rank3.name as @e[tag=individualBoard,tag=battle,tag=rank3] run data modify entity @s text set value '[{"text":"3. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings battle.rank3.name as @e[tag=individualBoard,tag=battle,tag=rank3] run function academy_houses:_internal/individual/display_rank_battle with {rank:3}

execute unless data storage academy_houses:rankings battle.rank4.name as @e[tag=individualBoard,tag=battle,tag=rank4] run data modify entity @s text set value '[{"text":"4. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings battle.rank4.name as @e[tag=individualBoard,tag=battle,tag=rank4] run function academy_houses:_internal/individual/display_rank_battle with {rank:4}

execute unless data storage academy_houses:rankings battle.rank5.name as @e[tag=individualBoard,tag=battle,tag=rank5] run data modify entity @s text set value '[{"text":"5. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'
execute if data storage academy_houses:rankings battle.rank5.name as @e[tag=individualBoard,tag=battle,tag=rank5] run function academy_houses:_internal/individual/display_rank_battle with {rank:5}
