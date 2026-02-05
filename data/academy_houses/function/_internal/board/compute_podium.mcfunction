# Reset
scoreboard players set Salador rank 0
scoreboard players set Caradaigle rank 0
scoreboard players set Bulbitard rank 0

# Copier les scores
scoreboard players operation Salador tmp = Salador housePoints
scoreboard players operation Caradaigle tmp = Caradaigle housePoints
scoreboard players operation Bulbitard tmp = Bulbitard housePoints

# --- PLACE 1 ---
scoreboard players operation #max tmp = Salador tmp
execute if score Caradaigle tmp > #max tmp run scoreboard players operation #max tmp = Caradaigle tmp
execute if score Bulbitard tmp > #max tmp run scoreboard players operation #max tmp = Bulbitard tmp

execute if score Salador tmp = #max tmp run scoreboard players set Salador rank 1
execute if score Caradaigle tmp = #max tmp run scoreboard players set Caradaigle rank 1
execute if score Bulbitard tmp = #max tmp run scoreboard players set Bulbitard rank 1

# Retirer les premiers
execute if score Salador rank matches 1 run scoreboard players set Salador tmp -999999
execute if score Caradaigle rank matches 1 run scoreboard players set Caradaigle tmp -999999
execute if score Bulbitard rank matches 1 run scoreboard players set Bulbitard tmp -999999

# --- PLACE 2 ---
scoreboard players operation #max tmp = Salador tmp
execute if score Caradaigle tmp > #max tmp run scoreboard players operation #max tmp = Caradaigle tmp
execute if score Bulbitard tmp > #max tmp run scoreboard players operation #max tmp = Bulbitard tmp

execute if score Salador tmp = #max tmp run scoreboard players set Salador rank 2
execute if score Caradaigle tmp = #max tmp run scoreboard players set Caradaigle rank 2
execute if score Bulbitard tmp = #max tmp run scoreboard players set Bulbitard rank 2

# --- PLACE 3 ---
execute if score Salador rank matches 0 run scoreboard players set Salador rank 3
execute if score Caradaigle rank matches 0 run scoreboard players set Caradaigle rank 3
execute if score Bulbitard rank matches 0 run scoreboard players set Bulbitard rank 3