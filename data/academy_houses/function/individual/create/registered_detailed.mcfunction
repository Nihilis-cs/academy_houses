# Déterminer la direction du joueur
function academy_houses:_internal/util/get_direction

# Créer le board dans la bonne orientation
execute if entity @s[tag=facing_south] run function academy_houses:individual/create/registered_detailed_south
execute if entity @s[tag=facing_west] run function academy_houses:individual/create/registered_detailed_west
execute if entity @s[tag=facing_north] run function academy_houses:individual/create/registered_detailed_north
execute if entity @s[tag=facing_east] run function academy_houses:individual/create/registered_detailed_east

# Nettoyer les tags de direction
tag @s remove facing_south
tag @s remove facing_west
tag @s remove facing_north
tag @s remove facing_east
