# # Sécurité : uniquement si un joueur est ciblé
# execute unless entity @s run return 0

# Nettoyage anciennes maisons
tag @s remove Salador
tag @s remove Caradaigle
tag @s remove Bulbitard

# Assignation
scoreboard players set @s playerHouse 0
tag @s add Salador

# Message RP
tellraw @s {"text":"🔥 Tu as été assigné à la maison Salador par l’Académie.","color":"red","bold":true}
