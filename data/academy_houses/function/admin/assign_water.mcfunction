# Sécurité : uniquement si un joueur est ciblé
execute unless entity @s run return 0

# Nettoyage anciennes maisons
tag @s remove Salador
tag @s remove Caradaigle
tag @s remove Bulbitard
team leave @s

# Assignation
scoreboard players set @s playerHouse 1
tag @s add Caradaigle
team join Caradaigle @s

# Message RP
tellraw @s {"text":"💧 Tu as été assigné à la maison Caradaigle par l’Académie.","color":"blue","bold":true}
