# Board Pokémon Enregistrés - Face Ouest

# Titre
summon text_display ~ ~3.3 ~ {text:'{"text":"📝 Pokémon Enregistrés - Top 10","color":"yellow","bold":true}',alignment:center,Tags:["individualBoard","registered","header"],Rotation:[270.0f,0.0f]}

# Places 1-10 pour Pokémon Enregistrés
summon text_display ~ ~3.0 ~ {text:'{"text":"1. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank1"],Rotation:[270.0f,0.0f]}
summon text_display ~ ~2.7 ~ {text:'{"text":"2. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank2"],Rotation:[270.0f,0.0f]}
summon text_display ~ ~2.4 ~ {text:'{"text":"3. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank3"],Rotation:[270.0f,0.0f]}
summon text_display ~ ~2.1 ~ {text:'{"text":"4. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank4"],Rotation:[270.0f,0.0f]}
summon text_display ~ ~1.8 ~ {text:'{"text":"5. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank5"],Rotation:[270.0f,0.0f]}
summon text_display ~ ~1.5 ~ {text:'{"text":"6. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank6"],Rotation:[270.0f,0.0f]}
summon text_display ~ ~1.2 ~ {text:'{"text":"7. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank7"],Rotation:[270.0f,0.0f]}
summon text_display ~ ~0.9 ~ {text:'{"text":"8. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank8"],Rotation:[270.0f,0.0f]}
summon text_display ~ ~0.6 ~ {text:'{"text":"9. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank9"],Rotation:[270.0f,0.0f]}
summon text_display ~ ~0.3 ~ {text:'{"text":"10. ---","color":"white"}',alignment:center,Tags:["individualBoard","registered","rank10"],Rotation:[270.0f,0.0f]}

# Mettre à jour les données
function academy_houses:_internal/individual/update_boards

say Board Pokémon Enregistrés créé !
