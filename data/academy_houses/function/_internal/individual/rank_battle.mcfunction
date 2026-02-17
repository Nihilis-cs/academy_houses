# Calculer le classement pour les combats gagnés (Top 5 seulement)
# Utilise un système de comparaison pour attribuer les rangs

# Trouver le joueur avec le score le plus élevé pour le rang 1
scoreboard players set #max_battle tmp -1
execute as @a[scores={battle_won=0..}] if score @s battle_won > #max_battle tmp run scoreboard players operation #max_battle tmp = @s battle_won
execute as @a[scores={battle_won=0..}] if score @s battle_won = #max_battle tmp run tag @s add rank1_battle

# Rang 2 - trouver le deuxième score le plus élevé
scoreboard players set #max_battle tmp -1
execute as @a[scores={battle_won=0..},tag=!rank1_battle] if score @s battle_won > #max_battle tmp run scoreboard players operation #max_battle tmp = @s battle_won
execute as @a[scores={battle_won=0..},tag=!rank1_battle] if score @s battle_won = #max_battle tmp run tag @s add rank2_battle

# Rang 3
scoreboard players set #max_battle tmp -1
execute as @a[scores={battle_won=0..},tag=!rank1_battle,tag=!rank2_battle] if score @s battle_won > #max_battle tmp run scoreboard players operation #max_battle tmp = @s battle_won
execute as @a[scores={battle_won=0..},tag=!rank1_battle,tag=!rank2_battle] if score @s battle_won = #max_battle tmp run tag @s add rank3_battle

# Rang 4
scoreboard players set #max_battle tmp -1
execute as @a[scores={battle_won=0..},tag=!rank1_battle,tag=!rank2_battle,tag=!rank3_battle] if score @s battle_won > #max_battle tmp run scoreboard players operation #max_battle tmp = @s battle_won
execute as @a[scores={battle_won=0..},tag=!rank1_battle,tag=!rank2_battle,tag=!rank3_battle] if score @s battle_won = #max_battle tmp run tag @s add rank4_battle

# Rang 5
scoreboard players set #max_battle tmp -1
execute as @a[scores={battle_won=0..},tag=!rank1_battle,tag=!rank2_battle,tag=!rank3_battle,tag=!rank4_battle] if score @s battle_won > #max_battle tmp run scoreboard players operation #max_battle tmp = @s battle_won
execute as @a[scores={battle_won=0..},tag=!rank1_battle,tag=!rank2_battle,tag=!rank3_battle,tag=!rank4_battle] if score @s battle_won = #max_battle tmp run tag @s add rank5_battle