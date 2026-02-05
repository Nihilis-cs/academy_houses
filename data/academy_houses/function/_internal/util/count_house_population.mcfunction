# Réinitialiser tous les compteurs
scoreboard players set Salador housePopulation 0
scoreboard players set Caradaigle housePopulation 0
scoreboard players set Bulbitard housePopulation 0

# Compter les joueurs
scoreboard players set #tmp housePopulation 0

# Salador
execute as @a[tag=Salador] run scoreboard players add Salador housePopulation 1
# Caradaigle
execute as @a[tag=Caradaigle] run scoreboard players add Caradaigle housePopulation 1
# Bulbitard
execute as @a[tag=Bulbitard] run scoreboard players add Bulbitard housePopulation 1