# Calculer le classement pour les Shiny capturés
# Utilise un système de comparaison pour attribuer les rangs

# Trouver le joueur avec le score le plus élevé pour le rang 1
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=0..}] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=0..}] if score @s shiny_caught = #max_shiny tmp run tag @s add rank1_shiny

# Rang 2 - trouver le deuxième score le plus élevé
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=0..},tag=!rank1_shiny] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=0..},tag=!rank1_shiny] if score @s shiny_caught = #max_shiny tmp run tag @s add rank2_shiny

# Rang 3
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=0..},tag=!rank1_shiny,tag=!rank2_shiny] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=0..},tag=!rank1_shiny,tag=!rank2_shiny] if score @s shiny_caught = #max_shiny tmp run tag @s add rank3_shiny

# Rang 4
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=0..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=0..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny] if score @s shiny_caught = #max_shiny tmp run tag @s add rank4_shiny

# Rang 5
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=0..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=0..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny] if score @s shiny_caught = #max_shiny tmp run tag @s add rank5_shiny

# Rang 6
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=0..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=0..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny] if score @s shiny_caught = #max_shiny tmp run tag @s add rank6_shiny

# Rang 7
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=0..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny,tag=!rank6_shiny] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=0..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny,tag=!rank6_shiny] if score @s shiny_caught = #max_shiny tmp run tag @s add rank7_shiny

# Rang 8
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=0..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny,tag=!rank6_shiny,tag=!rank7_shiny] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=0..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny,tag=!rank6_shiny,tag=!rank7_shiny] if score @s shiny_caught = #max_shiny tmp run tag @s add rank8_shiny

# Rang 9
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=0..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny,tag=!rank6_shiny,tag=!rank7_shiny,tag=!rank8_shiny] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=0..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny,tag=!rank6_shiny,tag=!rank7_shiny,tag=!rank8_shiny] if score @s shiny_caught = #max_shiny tmp run tag @s add rank9_shiny

# Rang 10
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=0..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny,tag=!rank6_shiny,tag=!rank7_shiny,tag=!rank8_shiny,tag=!rank9_shiny] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=0..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny,tag=!rank6_shiny,tag=!rank7_shiny,tag=!rank8_shiny,tag=!rank9_shiny] if score @s shiny_caught = #max_shiny tmp run tag @s add rank10_shiny