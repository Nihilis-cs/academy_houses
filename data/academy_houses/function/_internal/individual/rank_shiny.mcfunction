# Calculer le classement pour les Shiny capturés
# Même système que pour les Pokémon enregistrés

# Rang 1 - Trouver le score maximum et prendre SEULEMENT le premier joueur
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=1..}] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=1..},limit=1,sort=arbitrary] if score @s shiny_caught = #max_shiny tmp run tag @s add rank1_shiny

# Rang 2
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=1..},tag=!rank1_shiny] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=1..},tag=!rank1_shiny,limit=1,sort=arbitrary] if score @s shiny_caught = #max_shiny tmp run tag @s add rank2_shiny

# Rang 3
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=1..},tag=!rank1_shiny,tag=!rank2_shiny] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=1..},tag=!rank1_shiny,tag=!rank2_shiny,limit=1,sort=arbitrary] if score @s shiny_caught = #max_shiny tmp run tag @s add rank3_shiny

# Rang 4
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=1..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=1..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,limit=1,sort=arbitrary] if score @s shiny_caught = #max_shiny tmp run tag @s add rank4_shiny

# Rang 5
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=1..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=1..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,limit=1,sort=arbitrary] if score @s shiny_caught = #max_shiny tmp run tag @s add rank5_shiny

# Rang 6
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=1..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=1..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny,limit=1,sort=arbitrary] if score @s shiny_caught = #max_shiny tmp run tag @s add rank6_shiny

# Rang 7
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=1..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny,tag=!rank6_shiny] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=1..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny,tag=!rank6_shiny,limit=1,sort=arbitrary] if score @s shiny_caught = #max_shiny tmp run tag @s add rank7_shiny

# Rang 8
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=1..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny,tag=!rank6_shiny,tag=!rank7_shiny] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=1..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny,tag=!rank6_shiny,tag=!rank7_shiny,limit=1,sort=arbitrary] if score @s shiny_caught = #max_shiny tmp run tag @s add rank8_shiny

# Rang 9
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=1..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny,tag=!rank6_shiny,tag=!rank7_shiny,tag=!rank8_shiny] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=1..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny,tag=!rank6_shiny,tag=!rank7_shiny,tag=!rank8_shiny,limit=1,sort=arbitrary] if score @s shiny_caught = #max_shiny tmp run tag @s add rank9_shiny

# Rang 10
scoreboard players set #max_shiny tmp -1
execute as @a[scores={shiny_caught=1..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny,tag=!rank6_shiny,tag=!rank7_shiny,tag=!rank8_shiny,tag=!rank9_shiny] if score @s shiny_caught > #max_shiny tmp run scoreboard players operation #max_shiny tmp = @s shiny_caught
execute as @a[scores={shiny_caught=1..},tag=!rank1_shiny,tag=!rank2_shiny,tag=!rank3_shiny,tag=!rank4_shiny,tag=!rank5_shiny,tag=!rank6_shiny,tag=!rank7_shiny,tag=!rank8_shiny,tag=!rank9_shiny,limit=1,sort=arbitrary] if score @s shiny_caught = #max_shiny tmp run tag @s add rank10_shiny

# Sauvegarder les noms des joueurs dans le storage
execute as @a[tag=rank1_shiny] run function academy_houses:_internal/individual/save_name_shiny with {rank:1,name:""}
execute as @a[tag=rank2_shiny] run function academy_houses:_internal/individual/save_name_shiny with {rank:2,name:""}
execute as @a[tag=rank3_shiny] run function academy_houses:_internal/individual/save_name_shiny with {rank:3,name:""}
execute as @a[tag=rank4_shiny] run function academy_houses:_internal/individual/save_name_shiny with {rank:4,name:""}
execute as @a[tag=rank5_shiny] run function academy_houses:_internal/individual/save_name_shiny with {rank:5,name:""}
execute as @a[tag=rank6_shiny] run function academy_houses:_internal/individual/save_name_shiny with {rank:6,name:""}
execute as @a[tag=rank7_shiny] run function academy_houses:_internal/individual/save_name_shiny with {rank:7,name:""}
execute as @a[tag=rank8_shiny] run function academy_houses:_internal/individual/save_name_shiny with {rank:8,name:""}
execute as @a[tag=rank9_shiny] run function academy_houses:_internal/individual/save_name_shiny with {rank:9,name:""}
execute as @a[tag=rank10_shiny] run function academy_houses:_internal/individual/save_name_shiny with {rank:10,name:""}