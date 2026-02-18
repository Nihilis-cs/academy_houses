# Documentation - Système Individual (Classements Individuels)

## 📋 Vue d'ensemble

Le système **Individual** du datapack Academy Houses gère les classements individuels des joueurs dans différentes catégories de performances Pokémon. Il affiche des leaderboards visuels sous forme d'entités `text_display` positionnées dans le monde et met à jour automatiquement les classements en temps réel.

### Fonctionnalités principales

- **3 types de classements** : Pokémon Enregistrés (Top 10), Shinies Capturés (Top 10), Combats Gagnés (Top 5)
- **Affichage directionnel** : Boards adaptés aux 4 orientations cardinales
- **Système persistant** : Affichage des joueurs même hors ligne via NBT Storage
- **Mise à jour automatique** : Calculs et affichages cohérents à chaque mise à jour
- **Gestion intelligente des égalités** : Algorithm déterministe sans aléatoire

---

## 🏗️ Architecture du système

```
data/academy_houses/function/
├── individual/                      # Fonctions publiques
│   ├── update.mcfunction            # Mise à jour des classements
│   ├── detailed.mcfunction          # Création adaptée à l'orientation
│   ├── detailed_[direction].mcfunction # Création par direction
│   ├── clear_near.mcfunction        # Suppression des boards locaux
│   └── create/                      # Templates de création
│       ├── registered_detailed_[dir].mcfunction  # Pokémon enregistrés
│       ├── shineys_detailed_[dir].mcfunction     # Shinies capturés
│       └── pvp_detailed_[dir].mcfunction         # Combats gagnés
│
└── _internal/individual/            # Fonctions internes (système)
    ├── compute_rankings.mcfunction  # Orchestrateur principal
    ├── rank_[type].mcfunction       # Algorithmes de classement
    ├── save_name_[type].mcfunction  # Sauvegarde NBT persistante
    ├── display_rank_[type].mcfunction # Affichage avec données stockées
    ├── update_boards*.mcfunction    # Systèmes d'affichage
    └── [autres fichiers techniques]
```

---

## 🎯 Types de leaderboards

### 1. Pokémon Enregistrés (📝)
- **Objectif scoreboard** : `registered`
- **Top** : 10 places
- **Couleur** : Jaune (`yellow`)
- **Critère** : Nombre de Pokémon enregistrés dans le Pokédex
- **Tags** : `individualBoard`, `registered`, `rank[1-10]`

### 2. Shinies Capturés (✨)
- **Objectif scoreboard** : `shiny_caught`
- **Top** : 10 places
- **Couleur** : Aqua (`aqua`)
- **Critère** : Nombre de Pokémon Shiny capturés
- **Tags** : `individualBoard`, `shiny`, `rank[1-10]`

### 3. Combats Gagnés (⚔)
- **Objectif scoreboard** : `battle_won`
- **Top** : 5 places
- **Couleur** : Rouge (`red`)
- **Critère** : Nombre de combats PvP gagnés
- **Tags** : `individualBoard`, `battle`, `rank[1-5]`

---

## 🧭 Système de création des boards

### Création intelligente avec orientation

La fonction `detailed.mcfunction` :
1. **Détecte automatiquement** l'orientation du joueur via `get_direction`
2. **Applique les tags** directionnels (`facing_north`, `facing_south`, etc.)
3. **Appelle la fonction appropriée** selon l'orientation
4. **Nettoie les tags** après création

### Positions et rotations par direction

| Direction | Rotation | Position relative | Alignement |
|-----------|----------|------------------|------------|
| **Est**   | `[90.0f, 0.0f]` | Relativement à l'exécuteur | `center` |
| **Ouest** | `[270.0f, 0.0f]` | Décalage oeste | `center` |
| **Nord**  | `[180.0f, 0.0f]` | Décalage nord | `center` |
| **Sud**   | `[0.0f, 0.0f]` | Sans décalage | `center` |

### Structure verticale des boards

```
Y+3.3 : 📝 Titre du leaderboard
Y+3.0 : 1er place (or/gras)
Y+2.7 : 2ème place 
Y+2.4 : 3ème place
...
Y+0.3 : 10ème place (ou 5ème pour PvP)
```

---

## ⚙️ Algorithme de classement et stockage

### Phase 1 : Calcul des rangs (`compute_rankings.mcfunction`)

1. **Initialisation** du stockage NBT : `academy_houses:rankings`
2. **Nettoyage** des tags de classement précédents
3. **Calcul séquentiel** des rangs par type :
   - `rank_registered.mcfunction` : Top 10 Pokémon
   - `rank_shiny.mcfunction` : Top 10 Shinies  
   - `rank_battle.mcfunction` : Top 5 Combats

### Phase 2 : Attribution des rangs par type

Pour chaque rang de 1 à N :
```mcfunction
# 1. Recherche du score maximum dans les non-classés
scoreboard players set #max_[type] tmp -1
execute as @a[scores={objective=1..},tag=![exclusions]] if score @s objective > #max_[type] tmp run scoreboard players operation #max_[type] tmp = @s objective

# 2. Attribution DU PREMIER joueur avec ce score  
execute as @a[scores={objective=1..},tag=![exclusions],limit=1,sort=arbitrary] if score @s objective = #max_[type] tmp run tag @s add rank[N]_[type]
```

**Gestion des égalités** : `limit=1,sort=arbitrary` garantit qu'un seul joueur par rang, résolution déterministe.

### Phase 3 : Sauvegarde persistante (`save_name_*.mcfunction`)

Pour chaque joueur classé :
```mcfunction
# Récupération intelligente du nom
data modify storage academy_houses:temp current_name set from entity @s CustomName
execute unless data storage academy_houses:temp current_name run data modify storage academy_houses:temp current_name set from entity @s Name

# Stockage du nom + score
execute store result storage academy_houses:temp score int 1 run scoreboard players get @s [objective]
data modify storage academy_houses:rankings [type].rank[N] set value {name:"",score:0}
data modify storage academy_houses:rankings [type].rank[N].name set from storage academy_houses:temp current_name  
data modify storage academy_houses:rankings [type].rank[N].score set from storage academy_houses:temp score
```

### Phase 4 : Affichage persistant (`display_rank_*.mcfunction`)

```mcfunction
# Récupération des données stockées
data modify storage academy_houses:temp stored_name set from storage academy_houses:rankings [type].rank[N].name
data modify storage academy_houses:temp stored_score set from storage academy_houses:rankings [type].rank[N].score

# Affichage avec données NBT (fonctionne hors ligne)
data modify entity @s text set value '[
  {"text":"[N]. ","color":"[color]"[,"bold":true]}, 
  {"nbt":"stored_name","storage":"academy_houses:temp","interpret":true},
  {"text":" - ","color":"gray"},
  {"nbt":"stored_score","storage":"academy_houses:temp","color":"[color]"}
]'
```

---

## 🎮 Fonctions publiques et utilisation

### Commandes administrateur

```mcfunction
# Mise à jour de tous les classements
/function academy_houses:individual/update

# Création d'un board adapté à l'orientation
/function academy_houses:individual/detailed

# Création directionnelle spécifique
/function academy_houses:individual/detailed_east
/function academy_houses:individual/detailed_west  
/function academy_houses:individual/detailed_north
/function academy_houses:individual/detailed_south

# Suppression des boards locaux (rayon 10 blocs)
/function academy_houses:individual/clear_near
```

### Création de boards spécifiques

```mcfunction
# Pokémon enregistrés - direction automatique
/function academy_houses:individual/create/registered_detailed_east

# Shinies capturés - direction spécifique  
/function academy_houses:individual/create/shineys_detailed_north

# Combats PvP - toutes directions disponibles
/function academy_houses:individual/create/pvp_detailed_south
```

### Gestion des entités boards

```mcfunction
# Sélection de tous les boards individuels
@e[tag=individualBoard]

# Par catégorie
@e[tag=individualBoard,tag=registered]  # Pokémon enregistrés
@e[tag=individualBoard,tag=shiny]       # Shinies capturés  
@e[tag=individualBoard,tag=battle]      # Combats gagnés

# Par rang spécifique
@e[tag=individualBoard,tag=registered,tag=rank1]  # 1er en Pokémon
@e[tag=individualBoard,tag=shiny,tag=rank5]       # 5ème en Shinies
```

---

## 🗃️ Structure technique NBT

### Storage principal : `academy_houses:rankings`

```nbt
academy_houses:rankings: {
  registered: {
    rank1: {name: '"PlayerName"', score: 142},
    rank2: {name: '"AnotherPlayer"', score: 98}, 
    rank3: {name: '"ThirdPlayer"', score: 76},
    ...
    rank10: {name: '"TenthPlayer"', score: 12}
  },
  shiny: {
    rank1: {name: '"ShinyMaster"', score: 25},
    rank2: {name: '"ShinyHunter"', score: 18},
    ...
  },
  battle: {
    rank1: {name: '"PvPChampion"', score: 34},
    rank2: {name: '"Warrior"', score: 28},
    ...
    rank5: {name: '"Fighter"', score: 8}
  }
}
```

### Storage temporaire : `academy_houses:temp`

```nbt
academy_houses:temp: {
  current_name: '"PlayerName"',    # Nom en cours de traitement
  stored_name: '"StoredName"',     # Nom récupéré du storage
  stored_score: 42,                # Score récupéré du storage  
  score: 100                      # Score temporaire
}
```

### Tags des entités text_display

```mcfunction
# Tags obligatoires pour tous les boards
individualBoard              # Identifiant général du système

# Tags de catégorie (mutuellement exclusifs)  
registered | shiny | battle  # Type de classement

# Tags de position (mutuellement exclusifs)
header                       # Titre du board
rank1 | rank2 | ... | rank10 # Position dans le classement
```

---

## 🔧 Maintenance et troubleshooting

### Problèmes courants

**1. Classements incohérents**
```mcfunction
# Diagnostic : Vérifier les scores  
/scoreboard players list registered
/scoreboard players list shiny_caught
/scoreboard players list battle_won

# Solution : Recalculer
/function academy_houses:individual/update
```

**2. Boards non visibles**
```mcfunction
# Diagnostic : Compter les entités
/execute as @a run say @e[tag=individualBoard,distance=..20]

# Solution : Recréer les boards
/function academy_houses:individual/clear_near  
/function academy_houses:individual/detailed
```

**3. Joueurs hors ligne non affichés**
```mcfunction
# Diagnostic : Vérifier le storage
/data get storage academy_houses:rankings

# Le nouveau système NBT résout ce problème automatiquement
```

**4. Données corrompues dans le storage**
```mcfunction
# Reset complet du storage
/data remove storage academy_houses:rankings
/function academy_houses:individual/update
```

### Commandes de diagnostic

```mcfunction
# Afficher le contenu du storage  
/data get storage academy_houses:rankings

# Vérifier les tags de rang actifs
/tag @a list

# Compter les boards par type
/execute store result score #registered tmp run execute as @e[tag=individualBoard,tag=registered] run say
/execute store result score #shiny tmp run execute as @e[tag=individualBoard,tag=shiny] run say  
/execute store result score #battle tmp run execute as @e[tag=individualBoard,tag=battle] run say
```

### Optimisation et performance

- **Fréquence de mise à jour** : Le système ne se exécute que lors des appels manuels à `update`
- **Stockage efficient** : Utilise NBT Storage au lieu de calculs répétitifs
- **Algorithme O(n)** : Calcul linéaire des classements, pas de tri complexe
- **Garbage collection** : Nettoyage automatique des tags temporaires

---

## 📈 Évolutions et historique

### Version 1.0 (Système original)
- Classements basés sur selectors JSON en temps réel
- Problème : Joueurs hors ligne non affichés
- Problème : Incohérences aléatoires dans l'affichage

### Version 2.0 (Système persistant actuel) ✅
- **Stockage NBT persistant** des noms et scores  
- **Algorithme déterministe** sans composants aléatoires
- **Affichage hors ligne** des joueurs déconnectés
- **Cohérence garantie** entre nom et score affichés
- **Migration automatique** vers le nouveau système

### Corrections techniques apportées

1. **Suppression de `sort=random`** → Algorithme déterministe
2. **Unification des sélecteurs JSON** → Plus d'incohérences nom/score 
3. **Gestion intelligente des égalités** → `limit=1,sort=arbitrary`
4. **Sélecteur de scores corrigé** → `1..` au lieu de `0..`
5. **Système NBT Storage** → Persistance des données hors ligne

---

## 🎯 Utilisation recommandée

### Workflow standard

1. **Placement initial** :
   ```mcfunction
   /tp @s [coordonnées_souhaitées]
   /function academy_houses:individual/detailed
   ```

2. **Mise à jour régulière** :
   ```mcfunction  
   /function academy_houses:individual/update
   ```

3. **Maintenance périodique** :
   ```mcfunction
   /function academy_houses:individual/clear_near
   /function academy_houses:individual/detailed
   ```

### Intégration avec d'autres systèmes

Le système Individual s'intègre avec :
- **Système de teams** (fire/water/grass) pour les scoreboards
- **Système de notifications** via `leaderboard_changed` advancement
- **UI des boards collectifs** pour cohérence visuelle

### Conseils d'optimisation

- **Espacement des boards** : Minimum 15 blocs entre boards pour éviter la surcharge visuelle
- **Orientation stratégique** : Placer face aux zones de passage fréquent
- **Mise à jour ciblée** : Utiliser `update` seulement lors de changements significatifs
- **Monitoring du storage** : Vérifier périodiquement la croissance des données NBT

---

*Documentation générée pour Academy Houses Datapack v2.0 - Système Individual*