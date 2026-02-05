# Podium board - Face Est
summon text_display ~ ~2.5 ~ {text:'{"text":"🏆 Classement de l\'Académie","color":"gold","bold":true}',alignment:center,Tags:["houseBoard","podium","title"],Rotation:[90.0f,0.0f]}

summon text_display ~ ~2.0 ~ {text:'{"text":"🥇 ---","color":"white","bold":true}',alignment:center,Tags:["houseBoard","podium","podium_1"],Rotation:[90.0f,0.0f]}

summon text_display ~ ~1.7 ~ {text:'{"text":"🥈 ---","color":"white"}',alignment:center,Tags:["houseBoard","podium","podium_2"],Rotation:[90.0f,0.0f]}

summon text_display ~ ~1.4 ~ {text:'{"text":"🥉 ---","color":"white"}',alignment:center,Tags:["houseBoard","podium","podium_3"],Rotation:[90.0f,0.0f]}

function academy_houses:board/update/podium
