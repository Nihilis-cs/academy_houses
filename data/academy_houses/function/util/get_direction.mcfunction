# Détermine la direction du joueur en tranches de 90 degrés
# Ajoute les tags: facing_south, facing_west, facing_north ou facing_east

# Récupérer la rotation du joueur et la stocker dans le scoreboard
execute store result score @s tmp run data get entity @s Rotation[0] 100

# Normaliser entre 0-36000 (représente 0-360 degrés en centièmes)
scoreboard players add @s tmp 36000
scoreboard players operation @s tmp %= #360 tmp

# Déterminer la direction (tranches de 90 degrés = 9000 en centièmes)
# 0-45°: Sud (0-4500)
# 45-135°: Ouest (4500-13500)
# 135-225°: Nord (13500-22500)
# 225-315°: Est (22500-31500)
# 315-360°: Sud (31500-36000)

execute if score @s tmp matches 0..4500 run tag @s add facing_south
execute if score @s tmp matches 31500..36000 run tag @s add facing_south

execute if score @s tmp matches 4501..13500 run tag @s add facing_west

execute if score @s tmp matches 13501..22500 run tag @s add facing_north

execute if score @s tmp matches 22501..31499 run tag @s add facing_east
