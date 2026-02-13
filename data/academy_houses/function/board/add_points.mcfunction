#Ajoute au joueur les points stockés dans houseDelta
#Avant d'appeler cette fonction il faut définir le nombre de points à ajouter via:
#   /scoreboard players set @s houseDelta <nombre_de_points>
#Et appeler la fonction via:
#   /function academy_houses:board/add_points

# Sii le joueur n'a pas de maison, on sort
execute unless score @s playerHouse matches 0..2 run return 0

# Ajouter les points à la bonne maison selon playerHouse

# Salador
execute if score @s playerHouse matches 0 run scoreboard players operation Salador housePoints += @s houseDelta

# Caradaigle
execute if score @s playerHouse matches 1 run scoreboard players operation Caradaigle housePoints += @s houseDelta

# Bulbitard
execute if score @s playerHouse matches 2 run scoreboard players operation Bulbitard housePoints += @s houseDelta

#On met à jour les affichages
function academy_houses:_internal/board/compute_leader
function academy_houses:_internal/board/compute_podium
function academy_houses:board/update


#Notifier le changement de classement
function academy_houses:_internal/notifier/leaderboard_changed

# Remise à 0 de houseDelta
scoreboard players set @s houseDelta 0