function academy_houses:util/init_teams

scoreboard objectives add housePoints dummy
scoreboard objectives add housePopulation dummy
scoreboard objectives add leader dummy
scoreboard objectives add rank dummy

scoreboard objectives add playerHouse dummy

#Servira de variable temporaire et aléatoire pour l'assignation random aux maisons
scoreboard objectives add tmp dummy
scoreboard objectives add random dummy

#Servira de variable pour les ajouts de points aux maison
scoreboard objectives add houseDelta dummy

# Initialiser les constantes pour les calculs
scoreboard players set #360 tmp 36000

# Créer les joueurs "virtuels" si absents
execute unless score Salador housePoints matches 0.. run scoreboard players set Salador housePoints 0
execute unless score Caradaigle housePoints matches 0.. run scoreboard players set Caradaigle housePoints 0
execute unless score Bulbitard housePoints matches 0.. run scoreboard players set Bulbitard housePoints 0

execute unless score Salador housePopulation matches 0.. run scoreboard players set Salador housePopulation 0
execute unless score Caradaigle housePopulation matches 0.. run scoreboard players set Caradaigle housePopulation 0
execute unless score Bulbitard housePopulation matches 0.. run scoreboard players set Bulbitard housePopulation 0

say [Academy Houses] Initialized