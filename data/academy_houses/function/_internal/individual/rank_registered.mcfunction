# Calculer le classement pour les Pokemon enregistrés
# Nouveau système corrigé qui gère les égalités correctement

# Rang 1 - Trouver le score maximum et prendre SEULEMENT le premier joueur
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=1..}] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=1..},limit=1,sort=arbitrary] if score @s registered = #max_registered tmp run tag @s add rank1_registered

# Rang 2 - Parmi ceux qui n'ont pas rank1, prendre le meilleur
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=1..},tag=!rank1_registered] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=1..},tag=!rank1_registered,limit=1,sort=arbitrary] if score @s registered = #max_registered tmp run tag @s add rank2_registered

# Rang 3
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=1..},tag=!rank1_registered,tag=!rank2_registered] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=1..},tag=!rank1_registered,tag=!rank2_registered,limit=1,sort=arbitrary] if score @s registered = #max_registered tmp run tag @s add rank3_registered

# Rang 4
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=1..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=1..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,limit=1,sort=arbitrary] if score @s registered = #max_registered tmp run tag @s add rank4_registered

# Rang 5
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=1..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=1..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,limit=1,sort=arbitrary] if score @s registered = #max_registered tmp run tag @s add rank5_registered

# Rang 6
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=1..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=1..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered,limit=1,sort=arbitrary] if score @s registered = #max_registered tmp run tag @s add rank6_registered

# Rang 7
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=1..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered,tag=!rank6_registered] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=1..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered,tag=!rank6_registered,limit=1,sort=arbitrary] if score @s registered = #max_registered tmp run tag @s add rank7_registered

# Rang 8
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=1..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered,tag=!rank6_registered,tag=!rank7_registered] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=1..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered,tag=!rank6_registered,tag=!rank7_registered,limit=1,sort=arbitrary] if score @s registered = #max_registered tmp run tag @s add rank8_registered

# Rang 9
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=1..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered,tag=!rank6_registered,tag=!rank7_registered,tag=!rank8_registered] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=1..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered,tag=!rank6_registered,tag=!rank7_registered,tag=!rank8_registered,limit=1,sort=arbitrary] if score @s registered = #max_registered tmp run tag @s add rank9_registered

# Rang 10
scoreboard players set #max_registered tmp -1
execute as @a[scores={registered=1..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered,tag=!rank6_registered,tag=!rank7_registered,tag=!rank8_registered,tag=!rank9_registered] if score @s registered > #max_registered tmp run scoreboard players operation #max_registered tmp = @s registered
execute as @a[scores={registered=1..},tag=!rank1_registered,tag=!rank2_registered,tag=!rank3_registered,tag=!rank4_registered,tag=!rank5_registered,tag=!rank6_registered,tag=!rank7_registered,tag=!rank8_registered,tag=!rank9_registered,limit=1,sort=arbitrary] if score @s registered = #max_registered tmp run tag @s add rank10_registered

# Sauvegarder les noms des joueurs dans le storage
execute as @a[tag=rank1_registered] run function academy_houses:_internal/individual/save_name_registered with {rank:1,name:""}
execute as @a[tag=rank2_registered] run function academy_houses:_internal/individual/save_name_registered with {rank:2,name:""}
execute as @a[tag=rank3_registered] run function academy_houses:_internal/individual/save_name_registered with {rank:3,name:""}
execute as @a[tag=rank4_registered] run function academy_houses:_internal/individual/save_name_registered with {rank:4,name:""}
execute as @a[tag=rank5_registered] run function academy_houses:_internal/individual/save_name_registered with {rank:5,name:""}
execute as @a[tag=rank6_registered] run function academy_houses:_internal/individual/save_name_registered with {rank:6,name:""}
execute as @a[tag=rank7_registered] run function academy_houses:_internal/individual/save_name_registered with {rank:7,name:""}
execute as @a[tag=rank8_registered] run function academy_houses:_internal/individual/save_name_registered with {rank:8,name:""}
execute as @a[tag=rank9_registered] run function academy_houses:_internal/individual/save_name_registered with {rank:9,name:""}
execute as @a[tag=rank10_registered] run function academy_houses:_internal/individual/save_name_registered with {rank:10,name:""}