# Mise à jour des points pour la Maison Feu
execute as @e[tag=houseBoard,tag=Salador] run data modify entity @s text set value '{"text":"🔥 Maison Salador : ","color":"red","bold":true,"extra":[{"score":{"name":"Salador","objective":"housePoints"}}]}'

# Mise à jour des points pour la Maison Eau
execute as @e[tag=houseBoard,tag=Caradaigle] run data modify entity @s text set value '{"text":"💧 Maison Caradaigle : ","color":"blue","bold":true,"extra":[{"score":{"name":"Caradaigle","objective":"housePoints"}}]}'

# Mise à jour des points pour la Maison Plante
execute as @e[tag=houseBoard,tag=Bulbitard] run data modify entity @s text set value '{"text":"🌿 Maison Bulbitard : ","color":"green","bold":true,"extra":[{"score":{"name":"Bulbitard","objective":"housePoints"}}]}'

function academy_houses:_internal/board/compute_podium
function academy_houses:_internal/board/compute_leader

function academy_houses:_internal/board/update/podium
function academy_houses:_internal/board/update/detailed
function academy_houses:_internal/board/update/compact
function academy_houses:_internal/board/update/leader