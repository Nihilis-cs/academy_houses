# Recalculer la population des maisons
function academy_houses:util/count_house_population

# 1. Trouver la population minimale
scoreboard players operation #min tmp = Salador housePopulation

execute if score Caradaigle housePopulation < #min tmp run scoreboard players operation #min tmp = Caradaigle housePopulation
execute if score Bulbitard housePopulation < #min tmp run scoreboard players operation #min tmp = Bulbitard housePopulation

# 2. Marquer les maisons éligibles (tmp = 1)

# Reset des flags
scoreboard players set Salador tmp 0
scoreboard players set Caradaigle tmp 0
scoreboard players set Bulbitard tmp 0

# Marquer les maisons au minimum
execute if score Salador housePopulation = #min tmp run scoreboard players set Salador tmp 1
execute if score Caradaigle housePopulation = #min tmp run scoreboard players set Caradaigle tmp 1
execute if score Bulbitard housePopulation = #min tmp run scoreboard players set Bulbitard tmp 1

# 3. Tirage aléatoire parmi les maisons éligibles

# Tirage aléatoire entre 0 et 2
execute store result score #rand random run random value 0..2

# Reset du choix joueur
scoreboard players set @s playerHouse -1

# Mapping random > maison (uniquement si éligible)
execute if score #rand random matches 0 if score Salador tmp matches 1 run scoreboard players set @s playerHouse 0
execute if score #rand random matches 1 if score Caradaigle tmp matches 1 run scoreboard players set @s playerHouse 1
execute if score #rand random matches 2 if score Bulbitard tmp matches 1 run scoreboard players set @s playerHouse 2

# 4. Fallback sécurisé (si le random tombe sur une maison non éligible)

execute if score @s playerHouse matches -1 if score Salador tmp matches 1 run scoreboard players set @s playerHouse 0
execute if score @s playerHouse matches -1 if score Caradaigle tmp matches 1 run scoreboard players set @s playerHouse 1
execute if score @s playerHouse matches -1 if score Bulbitard tmp matches 1 run scoreboard players set @s playerHouse 2

# 5. Nettoyage des tags

tag @s remove Salador
tag @s remove Caradaigle
tag @s remove Bulbitard

# 6. Assignation finale

execute if score @s playerHouse matches 0 run function academy_houses:assign/fire
execute if score @s playerHouse matches 1 run function academy_houses:assign/water
execute if score @s playerHouse matches 2 run function academy_houses:assign/grass