# Board Statistiques Individuelles - Face Est

# Titre principal
summon text_display ~ ~3.7 ~ {text:'{"text":"📊 Classements Individuels","color":"gold","italic":true,"bold":true}',alignment:center,Tags:["individualBoard","title"],Rotation:[90.0f,0.0f]}

# ===== Pokemon Enregistrés =====
summon text_display ~ ~3.3 ~3 {text:'{"text":"📝 Pokémon Enregistrés - Top 10","color":"yellow","bold":true}',alignment:center,Tags:["individualBoard","registered","header"],Rotation:[90.0f,0.0f]}

# Places 1-10 pour Pokémon Enregistrés
summon text_display ~ ~3.0 ~3 {text:'{"text":"1. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank1"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~2.7 ~3 {text:'{"text":"2. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank2"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~2.4 ~3 {text:'{"text":"3. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank3"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~2.1 ~3 {text:'{"text":"4. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank4"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~1.8 ~3 {text:'{"text":"5. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank5"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~1.5 ~3 {text:'{"text":"6. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank6"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~1.2 ~3 {text:'{"text":"7. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank7"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~0.9 ~3 {text:'{"text":"8. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank8"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~0.6 ~3 {text:'{"text":"9. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank9"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~0.3 ~3 {text:'{"text":"10. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank10"],Rotation:[90.0f,0.0f]}

# ===== Shiny Capturés =====
summon text_display ~ ~3.3 ~ {text:'{"text":"✨ Shinies Capturés - Top 10","color":"aqua","bold":true}',alignment:center,Tags:["individualBoard","shiny","header"],Rotation:[90.0f,0.0f]}

# Places 1-10 pour Shiny
summon text_display ~ ~3.0 ~ {text:'{"text":"1. ---","color":"white"}',alignment:center,Tags:["individualBoard","shiny","rank1"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~2.7 ~ {text:'{"text":"2. ---","color":"white"}',alignment:center,Tags:["individualBoard","shiny","rank2"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~2.4 ~ {text:'{"text":"3. ---","color":"white"}',alignment:center,Tags:["individualBoard","shiny","rank3"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~2.1 ~ {text:'{"text":"4. ---","color":"white"}',alignment:center,Tags:["individualBoard","shiny","rank4"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~1.8 ~ {text:'{"text":"5. ---","color":"white"}',alignment:center,Tags:["individualBoard","shiny","rank5"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~1.5 ~ {text:'{"text":"6. ---","color":"white"}',alignment:center,Tags:["individualBoard","shiny","rank6"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~1.2 ~ {text:'{"text":"7. ---","color":"white"}',alignment:center,Tags:["individualBoard","shiny","rank7"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~0.9 ~ {text:'{"text":"8. ---","color":"white"}',alignment:center,Tags:["individualBoard","shiny","rank8"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~0.6 ~ {text:'{"text":"9. ---","color":"white"}',alignment:center,Tags:["individualBoard","shiny","rank9"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~0.3 ~ {text:'{"text":"10. ---","color":"white"}',alignment:center,Tags:["individualBoard","shiny","rank10"],Rotation:[90.0f,0.0f]}

# ===== Combats Gagnés =====
summon text_display ~ ~3.3 ~-3 {text:'{"text":"⚔ Combats Gagnés - Top 5","color":"red","bold":true}',alignment:center,Tags:["individualBoard","battle","header"],Rotation:[90.0f,0.0f]}

# Places 1-5 pour Combats
summon text_display ~ ~3.0 ~-3 {text:'{"text":"1. ---","color":"white"}',alignment:center,Tags:["individualBoard","battle","rank1"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~2.7 ~-3 {text:'{"text":"2. ---","color":"white"}',alignment:center,Tags:["individualBoard","battle","rank2"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~2.4 ~-3 {text:'{"text":"3. ---","color":"white"}',alignment:center,Tags:["individualBoard","battle","rank3"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~2.1 ~-3 {text:'{"text":"4. ---","color":"white"}',alignment:center,Tags:["individualBoard","battle","rank4"],Rotation:[90.0f,0.0f]}
summon text_display ~ ~1.8 ~-3 {text:'{"text":"5. ---","color":"white"}',alignment:center,Tags:["individualBoard","battle","rank5"],Rotation:[90.0f,0.0f]}

# Mettre à jour les données
function academy_houses:_internal/individual/update_boards
