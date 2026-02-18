# Sauvegarder le nom du joueur pour les Pokémon enregistrés
# Exécuté en tant que joueur avec paramètre du rang

# Obtenir le nom du joueur (préférence : display name, sinon nom d'entité)
$data modify storage academy_houses:temp current_name set from entity @s CustomName
$execute unless data storage academy_houses:temp current_name run data modify storage academy_houses:temp current_name set value '"$(name)"'
$execute unless data storage academy_houses:temp current_name run data modify storage academy_houses:temp current_name set from entity @s Name

# Stocker le nom et le score
$execute store result storage academy_houses:temp score int 1 run scoreboard players get @s registered  
$data modify storage academy_houses:rankings registered.rank$(rank) set value {name:"",score:0}
$data modify storage academy_houses:rankings registered.rank$(rank).name set from storage academy_houses:temp current_name
$data modify storage academy_houses:rankings registered.rank$(rank).score set from storage academy_houses:temp score