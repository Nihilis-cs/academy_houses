# Reset leader flags
scoreboard players set Salador leader 0
scoreboard players set Caradaigle leader 0
scoreboard players set Bulbitard leader 0

# Initialiser le max avec Salador
scoreboard players operation #max tmp = Salador housePoints

execute if score Caradaigle housePoints > #max tmp run scoreboard players operation #max tmp = Caradaigle housePoints
execute if score Bulbitard housePoints > #max tmp run scoreboard players operation #max tmp = Bulbitard housePoints

# Marquer les leaders (gestion des ex æquo)
execute if score Salador housePoints = #max tmp run scoreboard players set Salador leader 1
execute if score Caradaigle housePoints = #max tmp run scoreboard players set Caradaigle leader 1
execute if score Bulbitard housePoints = #max tmp run scoreboard players set Bulbitard leader 1