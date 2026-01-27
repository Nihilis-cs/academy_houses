execute as @e[tag=podium_3] run data modify entity @s text set value '{"text":"🥉 ","bold":true}'

execute as @e[tag=podium_3] if score Salador rank matches 3 run data modify entity @s text append value '{"text":"🔥 Salador","color":"red"}'
execute as @e[tag=podium_3] if score Caradaigle rank matches 3 run data modify entity @s text append value '{"text":" 💧 Caradaigle","color":"blue"}'
execute as @e[tag=podium_3] if score Bulbitard rank matches 3 run data modify entity @s text append value '{"text":" 🌿 Bulbitard","color":"green"}'
