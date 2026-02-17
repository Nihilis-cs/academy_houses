function academy_houses:_internal/util/init_teams

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

# Timer pour la mise à jour automatique des boards individuels
scoreboard objectives add updateTimer dummy

# Initialiser les constantes pour les calculs 
scoreboard players set #360 tmp 36000
# Pour recalculer l'affichage kikimeter, 7200 ticks = 5 minutes, 600 ticks = 30 secondes, 100 ticks = 5 secondes, 3600 = 3 minutes
scoreboard players set #updateInterval updateTimer 3600

# Scoreboards pour les statistiques individuelles (Cobblemon Scoremons)
scoreboard objectives add registered minecraft.custom:scoremons.pokemon_registered
scoreboard objectives add shiny_caught minecraft.custom:scoremons.shiny_pokemon_caught
scoreboard objectives add battle_won minecraft.custom:scoremons.battle_won

# Créer les joueurs "virtuels" si absents
execute unless score Salador housePoints matches 0.. run scoreboard players set Salador housePoints 0
execute unless score Caradaigle housePoints matches 0.. run scoreboard players set Caradaigle housePoints 0
execute unless score Bulbitard housePoints matches 0.. run scoreboard players set Bulbitard housePoints 0

execute unless score Salador housePopulation matches 0.. run scoreboard players set Salador housePopulation 0
execute unless score Caradaigle housePopulation matches 0.. run scoreboard players set Caradaigle housePopulation 0
execute unless score Bulbitard housePopulation matches 0.. run scoreboard players set Bulbitard housePopulation 0

say [Academy Houses] Initialized