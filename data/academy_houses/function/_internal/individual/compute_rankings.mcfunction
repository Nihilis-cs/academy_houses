# Calculer les classements individuels pour les différentes statistiques
# Cette fonction est appelée avant la mise à jour des boards

# Nettoyer les tags de classement précédents
tag @a remove rank1_registered
tag @a remove rank2_registered
tag @a remove rank3_registered
tag @a remove rank4_registered
tag @a remove rank5_registered
tag @a remove rank6_registered
tag @a remove rank7_registered
tag @a remove rank8_registered
tag @a remove rank9_registered
tag @a remove rank10_registered

tag @a remove rank1_shiny
tag @a remove rank2_shiny
tag @a remove rank3_shiny
tag @a remove rank4_shiny
tag @a remove rank5_shiny
tag @a remove rank6_shiny
tag @a remove rank7_shiny
tag @a remove rank8_shiny
tag @a remove rank9_shiny
tag @a remove rank10_shiny

tag @a remove rank1_battle
tag @a remove rank2_battle
tag @a remove rank3_battle
tag @a remove rank4_battle
tag @a remove rank5_battle

# Calculer les classements pour les Pokemon enregistrés
function academy_houses:_internal/individual/rank_registered

# Calculer les classements pour les Shiny capturés  
function academy_houses:_internal/individual/rank_shiny

# Calculer les classements pour les combats gagnés
function academy_houses:_internal/individual/rank_battle