say UPDATE_START
# Mise à jour des points pour la Maison Feu
execute as @e[tag=houseBoard,tag=Salador] run data modify entity @s text set value '{"text":"🔥 Maison Salador : ","color":"red","bold":true,"extra":[{"score":{"name":"Salador","objective":"housePoints"}}]}'

# Mise à jour des points pour la Maison Eau
execute as @e[tag=houseBoard,tag=Caradaigle] run data modify entity @s text set value '{"text":"💧 Maison Caradaigle : ","color":"blue","bold":true,"extra":[{"score":{"name":"Caradaigle","objective":"housePoints"}}]}'

# Mise à jour des points pour la Maison Plante
execute as @e[tag=houseBoard,tag=Bulbitard] run data modify entity @s text set value '{"text":"🌿 Maison Bulbitard : ","color":"green","bold":true,"extra":[{"score":{"name":"Bulbitard","objective":"housePoints"}}]}'

say UPDATE_OK

function academy_houses:board/update/podium
function academy_houses:board/update/detailed
function academy_houses:board/update/compact
function academy_houses:board/update/leader
