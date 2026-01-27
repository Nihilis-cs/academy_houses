execute as @e[tag=podium_1] run data modify entity @s text set value '{"text":"🥇 ---","color":"white","bold":true}'
execute as @e[tag=podium_1] if score Salador rank matches 1 run data modify entity @s text set value '{"text":"🥇 🔥 Salador — ","color":"red","bold":true,"extra":[{"score":{"name":"Salador","objective":"housePoints"},"color":"gold"}]}'
execute as @e[tag=podium_1] if score Caradaigle rank matches 1 run data modify entity @s text set value '{"text":"🥇 💧 Caradaigle — ","color":"blue","bold":true,"extra":[{"score":{"name":"Caradaigle","objective":"housePoints"},"color":"gold"}]}'
execute as @e[tag=podium_1] if score Bulbitard rank matches 1 run data modify entity @s text set value '{"text":"🥇 🌿 Bulbitard — ","color":"green","bold":true,"extra":[{"score":{"name":"Bulbitard","objective":"housePoints"},"color":"gold"}]}'

execute as @e[tag=podium_2] run data modify entity @s text set value '{"text":"🥈 ---","color":"white"}'
execute as @e[tag=podium_2] if score Salador rank matches 2 run data modify entity @s text set value '{"text":"🥈 🔥 Salador — ","color":"red","extra":[{"score":{"name":"Salador","objective":"housePoints"},"color":"gold"}]}'
execute as @e[tag=podium_2] if score Caradaigle rank matches 2 run data modify entity @s text set value '{"text":"🥈 💧 Caradaigle — ","color":"blue","extra":[{"score":{"name":"Caradaigle","objective":"housePoints"},"color":"gold"}]}'
execute as @e[tag=podium_2] if score Bulbitard rank matches 2 run data modify entity @s text set value '{"text":"🥈 🌿 Bulbitard — ","color":"green","extra":[{"score":{"name":"Bulbitard","objective":"housePoints"},"color":"gold"}]}'

execute as @e[tag=podium_3] run data modify entity @s text set value '{"text":"🥉 ---","color":"white"}'
execute as @e[tag=podium_3] if score Salador rank matches 3 run data modify entity @s text set value '{"text":"🥉 🔥 Salador — ","color":"red","extra":[{"score":{"name":"Salador","objective":"housePoints"},"color":"gold"}]}'
execute as @e[tag=podium_3] if score Caradaigle rank matches 3 run data modify entity @s text set value '{"text":"🥉 💧 Caradaigle — ","color":"blue","extra":[{"score":{"name":"Caradaigle","objective":"housePoints"},"color":"gold"}]}'
execute as @e[tag=podium_3] if score Bulbitard rank matches 3 run data modify entity @s text set value '{"text":"🥉 🌿 Bulbitard — ","color":"green","extra":[{"score":{"name":"Bulbitard","objective":"housePoints"},"color":"gold"}]}'