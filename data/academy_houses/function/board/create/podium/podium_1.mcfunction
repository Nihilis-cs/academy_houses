execute as @e[tag=podium_1] run data modify entity @s text set value '{"text":"🥇 ","bold":true}'

execute as @e[tag=podium_1] if score Salador rank matches 1 run data modify entity @s text append value '{"text":"🔥 Salador","color":"red","bold":true}'
execute as @e[tag=podium_1] if score Caradaigle rank matches 1 run data modify entity @s text append value '{"text":" 💧 Caradaigle","color":"blue","bold":true}'
execute as @e[tag=podium_1] if score Bulbitard rank matches 1 run data modify entity @s text append value '{"text":" 🌿 Bulbitard","color":"green","bold":true}'
