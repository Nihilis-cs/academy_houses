# Afficher le rang pour les batailles gagnées avec données du storage
# Utilise les noms et scores sauvegardés au lieu des sélecteurs JSON

# Copier le nom et le score du storage vers des variables temporaires
$data modify storage academy_houses:temp stored_name set from storage academy_houses:rankings battle.rank$(rank).name
$data modify storage academy_houses:temp stored_score set from storage academy_houses:rankings battle.rank$(rank).score

# Construire le texte JSON avec le nom et score stockés
$execute if data storage academy_houses:rankings battle.rank$(rank) if score $(rank) matches 1 as @e[tag=individualBoard,tag=battle,tag=rank$(rank)] run data modify entity @s text set value '[{"text":"$(rank). ","color":"gold","bold":true},{"nbt":"stored_name","storage":"academy_houses:temp","interpret":true},{"text":" - ","color":"gray"},{"nbt":"stored_score","storage":"academy_houses:temp","color":"red"}]'
$execute if data storage academy_houses:rankings battle.rank$(rank) unless score $(rank) matches 1 as @e[tag=individualBoard,tag=battle,tag=rank$(rank)] run data modify entity @s text set value '[{"text":"$(rank). ","color":"gray"},{"nbt":"stored_name","storage":"academy_houses:temp","interpret":true},{"text":" - ","color":"gray"},{"nbt":"stored_score","storage":"academy_houses:temp","color":"red"}]'