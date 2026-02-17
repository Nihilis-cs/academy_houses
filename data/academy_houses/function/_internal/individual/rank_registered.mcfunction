# Calculer le classement pour les Pokemon enregistrés
# Utilise un système de comparaison pour attribuer les rangs

# Trouver le joueur avec le score le plus élevé pour le rang 1
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=0..}] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=0..}] if score @s registered = #max_registered tmp run tag @s add rank1_registered

# Rang 2 - trouver le deuxième score le plus élevé
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=0..},tag=!rank1_registered] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=0..},tag=!rank1_registered] if score @s registered = #max_registered tmp run tag @s add rank2_registered

# Rang 3
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=0..},tag=!rank1_registered,tag=!rank2_registered] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=0..},tag=!rank1_registered,tag=!rank2_registered] if score @s registered = #max_registered tmp run tag @s add rank3_registered

# Rang 4
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=0..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=0..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered] if score @s registered = #max_registered tmp run tag @s add rank4_registered

# Rang 5
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=0..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=0..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered] if score @s registered = #max_registered tmp run tag @s add rank5_registered

# Rang 6
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=0..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=0..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered] if score @s registered = #max_registered tmp run tag @s add rank6_registered

# Rang 7
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=0..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered,tag=!rank6_registered] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=0..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered,tag=!rank6_registered] if score @s registered = #max_registered tmp run tag @s add rank7_registered

# Rang 8
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=0..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered,tag=!rank6_registered,tag=!rank7_registered] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=0..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered,tag=!rank6_registered,tag=!rank7_registered] if score @s registered = #max_registered tmp run tag @s add rank8_registered

# Rang 9
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=0..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered,tag=!rank6_registered,tag=!rank7_registered,tag=!rank8_registered] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=0..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered,tag=!rank6_registered,tag=!rank7_registered,tag=!rank8_registered] if score @s registered = #max_registered tmp run tag @s add rank9_registered

# Rang 10
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=0..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered,tag=!rank6_registered,tag=!rank7_registered,tag=!rank8_registered,tag=!rank9_registered] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=0..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered,tag=!rank6_registered,tag=!rank7_registered,tag=!rank8_registered,tag=!rank9_registered] if score @s registered = #max_registered tmp run tag @s add rank10_registered