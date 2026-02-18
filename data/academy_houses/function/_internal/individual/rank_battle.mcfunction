# Calculer le classement pour les combats gagnés (Top 5 seulement)
# Même système que pour les autres classements

# Rang 1 - Trouver le score maximum et prendre SEULEMENT le premier joueur
scoreboard players set #max_battle tmp -1
execute as @a[scores={battle_won=1..}] if score @s battle_won > #max_battle tmp run scoreboard players operation #max_battle tmp = @s battle_won
execute as @a[scores={battle_won=1..},limit=1,sort=arbitrary] if score @s battle_won = #max_battle tmp run tag @s add rank1_battle

# Rang 2
scoreboard players set #max_battle tmp -1
execute as @a[scores={battle_won=1..},tag=!rank1_battle] if score @s battle_won > #max_battle tmp run scoreboard players operation #max_battle tmp = @s battle_won
execute as @a[scores={battle_won=1..},tag=!rank1_battle,limit=1,sort=arbitrary] if score @s battle_won = #max_battle tmp run tag @s add rank2_battle

# Rang 3
scoreboard players set #max_battle tmp -1
execute as @a[scores={battle_won=1..},tag=!rank1_battle,tag=!rank2_battle] if score @s battle_won > #max_battle tmp run scoreboard players operation #max_battle tmp = @s battle_won
execute as @a[scores={battle_won=1..},tag=!rank1_battle,tag=!rank2_battle,limit=1,sort=arbitrary] if score @s battle_won = #max_battle tmp run tag @s add rank3_battle

# Rang 4
scoreboard players set #max_battle tmp -1
execute as @a[scores={battle_won=1..},tag=!rank1_battle,tag=!rank2_battle,tag=!rank3_battle] if score @s battle_won > #max_battle tmp run scoreboard players operation #max_battle tmp = @s battle_won
execute as @a[scores={battle_won=1..},tag=!rank1_battle,tag=!rank2_battle,tag=!rank3_battle,limit=1,sort=arbitrary] if score @s battle_won = #max_battle tmp run tag @s add rank4_battle

# Rang 5
scoreboard players set #max_battle tmp -1
execute as @a[scores={battle_won=1..},tag=!rank1_battle,tag=!rank2_battle,tag=!rank3_battle,tag=!rank4_battle] if score @s battle_won > #max_battle tmp run scoreboard players operation #max_battle tmp = @s battle_won
execute as @a[scores={battle_won=1..},tag=!rank1_battle,tag=!rank2_battle,tag=!rank3_battle,tag=!rank4_battle,limit=1,sort=arbitrary] if score @s battle_won = #max_battle tmp run tag @s add rank5_battle

# Sauvegarder les noms des joueurs dans le storage
execute as @a[tag=rank1_battle] run function academy_houses:_internal/individual/save_name_battle with {rank:1,name:""}
execute as @a[tag=rank2_battle] run function academy_houses:_internal/individual/save_name_battle with {rank:2,name:""}
execute as @a[tag=rank3_battle] run function academy_houses:_internal/individual/save_name_battle with {rank:3,name:""}
execute as @a[tag=rank4_battle] run function academy_houses:_internal/individual/save_name_battle with {rank:4,name:""}
execute as @a[tag=rank5_battle] run function academy_houses:_internal/individual/save_name_battle with {rank:5,name:""}