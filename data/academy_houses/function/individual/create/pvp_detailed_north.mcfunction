# Board Combats Gagnés - Face Nord

# Titre
summon text_display ~ ~3.3 ~ {text:'{"text":"⚔ Combats Gagnés - Top 5","color":"red","bold":true}',alignment:center,Tags:["individualBoard","battle","header"],Rotation:[0.0f,0.0f]}

# Places 1-5 pour Combats
summon text_display ~ ~3.0 ~ {text:'{"text":"1. ---","color":"white"}',alignment:center,Tags:["individualBoard","battle","rank1"],Rotation:[0.0f,0.0f]}
summon text_display ~ ~2.7 ~ {text:'{"text":"2. ---","color":"white"}',alignment:center,Tags:["individualBoard","battle","rank2"],Rotation:[0.0f,0.0f]}
summon text_display ~ ~2.4 ~ {text:'{"text":"3. ---","color":"white"}',alignment:center,Tags:["individualBoard","battle","rank3"],Rotation:[0.0f,0.0f]}
summon text_display ~ ~2.1 ~ {text:'{"text":"4. ---","color":"white"}',alignment:center,Tags:["individualBoard","battle","rank4"],Rotation:[0.0f,0.0f]}
summon text_display ~ ~1.8 ~ {text:'{"text":"5. ---","color":"white"}',alignment:center,Tags:["individualBoard","battle","rank5"],Rotation:[0.0f,0.0f]}

# Mettre à jour les données
function academy_houses:_internal/individual/update_boards

say Board Combats créé !
