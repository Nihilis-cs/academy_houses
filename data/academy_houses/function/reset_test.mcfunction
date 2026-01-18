# Quitter toute team
team leave @s

# Retirer tous les tags liés aux maisons
tag @s remove Salador
tag @s remove Caradaigle
tag @s remove Bulbitard
tag @s remove hasHouse

# Reset house choice
scoreboard players reset @s playerHouse

# Reset starter logic (si utilisée)
tag @s remove hasStarter

tellraw @s {"text":"🔄 Ton choix de starter et ta maison ont été réinitialisés.","color":"yellow"}