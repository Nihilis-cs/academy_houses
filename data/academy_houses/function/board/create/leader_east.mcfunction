# Leader board - Face Est
summon text_display ~ ~2.5 ~ {Tags:["houseBoard","leader","title"],text:'{"text":"👑 Maison Dominante","color":"gold","bold":true}',alignment:"center",background:0,Rotation:[90.0f,0.0f]}

summon text_display ~ ~2.0 ~ {Tags:["houseBoard","leader","leaderBoard"],text:'{"text":"❌","color":"white"}',alignment:"center",background:0,Rotation:[90.0f,0.0f]}

function academy_houses:board/update/leader
