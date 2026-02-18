# Afficher le rang pour les Pokémon shiny avec données du storage
# Utilise les noms et scores sauvegardés au lieu des sélecteurs JSON

# Copier le nom et le score du storage vers des variables temporaires
$data modify storage academy_houses:temp stored_name set from storage academy_houses:rankings shiny.rank$(rank).name
$data modify storage academy_houses:temp stored_score set from storage academy_houses:rankings shiny.rank$(rank).score

# Construire le texte JSON avec le nom et score stockés
$execute if data storage academy_houses:rankings shiny.rank$(rank) if score $(rank) matches 1 as @e[tag=individualBoard,tag=shiny,tag=rank$(rank)] run data modify entity @s text set value '[{"text":"$(rank). ","color":"gold","bold":true},{"nbt":"stored_name","storage":"academy_houses:temp","interpret":true},{"text":" - ","color":"gray"},{"nbt":"stored_score","storage":"academy_houses:temp","color":"aqua"}]'
$execute if data storage academy_houses:rankings shiny.rank$(rank) unless score $(rank) matches 1 as @e[tag=individualBoard,tag=shiny,tag=rank$(rank)] run data modify entity @s text set value '[{"text":"$(rank). ","color":"gray"},{"nbt":"stored_name","storage":"academy_houses:temp","interpret":true},{"text":" - ","color":"gray"},{"nbt":"stored_score","storage":"academy_houses:temp","color":"aqua"}]'