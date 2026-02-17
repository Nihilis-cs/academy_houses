# Gestion des cas où il n'y a pas assez de joueurs pour remplir tous les rangs
# Cette fonction affiche des lignes vides ou des messages par défaut

# Pour les rangs vides des Pokemon enregistrés
execute as @e[tag=individualBoard,tag=registered,tag=rank1] unless entity @a[tag=rank1_registered] run data modify entity @s text set value '[{"text":"1. ","color":"gold","bold":true},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank2] unless entity @a[tag=rank2_registered] run data modify entity @s text set value '[{"text":"2. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank3] unless entity @a[tag=rank3_registered] run data modify entity @s text set value '[{"text":"3. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank4] unless entity @a[tag=rank4_registered] run data modify entity @s text set value '[{"text":"4. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank5] unless entity @a[tag=rank5_registered] run data modify entity @s text set value '[{"text":"5. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank6] unless entity @a[tag=rank6_registered] run data modify entity @s text set value '[{"text":"6. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank7] unless entity @a[tag=rank7_registered] run data modify entity @s text set value '[{"text":"7. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank8] unless entity @a[tag=rank8_registered] run data modify entity @s text set value '[{"text":"8. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank9] unless entity @a[tag=rank9_registered] run data modify entity @s text set value '[{"text":"9. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=registered,tag=rank10] unless entity @a[tag=rank10_registered] run data modify entity @s text set value '[{"text":"10. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

# Pour les rangs vides des Shiny capturés
execute as @e[tag=individualBoard,tag=shiny,tag=rank1] unless entity @a[tag=rank1_shiny] run data modify entity @s text set value '[{"text":"1. ","color":"gold","bold":true},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank2] unless entity @a[tag=rank2_shiny] run data modify entity @s text set value '[{"text":"2. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank3] unless entity @a[tag=rank3_shiny] run data modify entity @s text set value '[{"text":"3. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank4] unless entity @a[tag=rank4_shiny] run data modify entity @s text set value '[{"text":"4. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank5] unless entity @a[tag=rank5_shiny] run data modify entity @s text set value '[{"text":"5. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank6] unless entity @a[tag=rank6_shiny] run data modify entity @s text set value '[{"text":"6. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank7] unless entity @a[tag=rank7_shiny] run data modify entity @s text set value '[{"text":"7. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank8] unless entity @a[tag=rank8_shiny] run data modify entity @s text set value '[{"text":"8. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank9] unless entity @a[tag=rank9_shiny] run data modify entity @s text set value '[{"text":"9. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=shiny,tag=rank10] unless entity @a[tag=rank10_shiny] run data modify entity @s text set value '[{"text":"10. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

# Pour les rangs vides des combats gagnés
execute as @e[tag=individualBoard,tag=battle,tag=rank1] unless entity @a[tag=rank1_battle] run data modify entity @s text set value '[{"text":"1. ","color":"gold","bold":true},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=battle,tag=rank2] unless entity @a[tag=rank2_battle] run data modify entity @s text set value '[{"text":"2. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=battle,tag=rank3] unless entity @a[tag=rank3_battle] run data modify entity @s text set value '[{"text":"3. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=battle,tag=rank4] unless entity @a[tag=rank4_battle] run data modify entity @s text set value '[{"text":"4. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'

execute as @e[tag=individualBoard,tag=battle,tag=rank5] unless entity @a[tag=rank5_battle] run data modify entity @s text set value '[{"text":"5. ","color":"gray"},{"text":"Aucun joueur","color":"gray","italic":true}]'