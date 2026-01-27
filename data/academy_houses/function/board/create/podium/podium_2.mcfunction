execute as @e[tag=podium_2] run data modify entity @s text set value '{"text":"🥈 ","bold":true}'

execute as @e[tag=podium_2] if score Salador rank matches 2 run data modify entity @s text append value '{"text":"🔥 Salador","color":"red"}'
execute as @e[tag=podium_2] if score Caradaigle rank matches 2 run data modify entity @s text append value '{"text":" 💧 Caradaigle","color":"blue"}'
execute as @e[tag=podium_2] if score Bulbitard rank matches 2 run data modify entity @s text append value '{"text":" 🌿 Bulbitard","color":"green"}'
