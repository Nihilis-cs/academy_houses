# Fonction de diagnostic pour le classement
# À exécuter pour voir si les scores et tags sont corrects

say --- DIAGNOSTIC CLASSEMENT ---

# Compter les joueurs avec des scores
execute store result score #players_registered tmp if entity @a[scores={registered=1..}]
execute store result score #players_shiny tmp if entity @a[scores={shiny_caught=1..}]
execute store result score #players_battle tmp if entity @a[scores={battle_won=1..}]

tellraw @a [{"text":"Joueurs avec Pokémon enregistrés (>=1): ","color":"yellow"},{"score":{"name":"#players_registered","objective":"tmp"},"color":"white"}]
tellraw @a [{"text":"Joueurs avec Shiny capturés (>=1): ","color":"aqua"},{"score":{"name":"#players_shiny","objective":"tmp"},"color":"white"}]
tellraw @a [{"text":"Joueurs avec combats gagnés (>=1): ","color":"red"},{"score":{"name":"#players_battle","objective":"tmp"},"color":"white"}]

# Afficher les scores de tous les joueurs connectés
tellraw @a {"text":"=== SCORES ACTUELS ===","color":"gold"}
execute as @a run tellraw @a [{"selector":"@s"},{"text":" - Registered: ","color":"gray"},{"score":{"name":"@s","objective":"registered"},"color":"yellow"},{"text":" | Shiny: "},{"score":{"name":"@s","objective":"shiny_caught"},"color":"aqua"},{"text":" | Battles: "},{"score":{"name":"@s","objective":"battle_won"},"color":"red"}]

# Calculer les classements et voir les tags
function academy_houses:_internal/individual/compute_rankings

# Vérifier qui a les tags de rang
tellraw @a {"text":"=== TAGS DE RANG ===","color":"gold"}
execute if entity @a[tag=rank1_registered] as @a[tag=rank1_registered] run tellraw @a [{"text":"Rang 1 Registered: ","color":"yellow"},{"selector":"@s"}]
execute if entity @a[tag=rank1_shiny] as @a[tag=rank1_shiny] run tellraw @a [{"text":"Rang 1 Shiny: ","color":"aqua"},{"selector":"@s"}]
execute if entity @a[tag=rank1_battle] as @a[tag=rank1_battle] run tellraw @a [{"text":"Rang 1 Battle: ","color":"red"},{"selector":"@s"}]

execute unless entity @a[tag=rank1_registered] run tellraw @a {"text":"Aucun joueur avec tag rank1_registered","color":"red"}
execute unless entity @a[tag=rank1_shiny] run tellraw @a {"text":"Aucun joueur avec tag rank1_shiny","color":"red"}
execute unless entity @a[tag=rank1_battle] run tellraw @a {"text":"Aucun joueur avec tag rank1_battle","color":"red"}