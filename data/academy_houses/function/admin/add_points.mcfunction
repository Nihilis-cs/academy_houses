#fonctionne exactement comme board/add_points.mcfunction mais pour un admin

# Sécurité : le joueur doit avoir une maison
execute unless score @s playerHouse matches 0..2 run return 0

# Salador
execute if score @s playerHouse matches 0 run scoreboard players operation Salador housePoints += @s houseDelta

# Caradaigle
execute if score @s playerHouse matches 1 run scoreboard players operation Caradaigle housePoints += @s houseDelta

# Bulbitard
execute if score @s playerHouse matches 2 run scoreboard players operation Bulbitard housePoints += @s houseDelta

# Feedback admin
tellraw @a[tag=staff] {"text":"📜 Points ajoutés à la maison du joueur ","color":"gold","extra":[{"selector":"@s"}]}

# Reset
scoreboard players set @s houseDelta 0

# Mise à jour du panneau
function academy_houses:board/update
