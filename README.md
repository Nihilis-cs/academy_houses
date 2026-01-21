# 🏆 Academy Houses - Système de Maisons Minecraft

## 📋 Description

**Academy Houses** est un datapack Minecraft conçu pour un serveur multi-joueurs avec système de maisons inspiré de l'univers Pokémon. Le système divise les joueurs entre trois maisons rivales basées sur les types élémentaires : **Feu**, **Eau** et **Plante**.

### Caractéristiques principales

- ✨ Trois maisons avec thèmes élémentaires (Salador 🔥, Caradaigle 💧, Bulbitard 🌿)
- 📊 Système de points avec classement en temps réel
- 👥 Gestion automatique et équilibrée de la population des maisons
- 🎯 Intégration avec l'avancement Cobblemon `pick_starter`
- 👨‍⚖️ Commandes administrateur dédiées
- 📈 Tableau de bord d'affichage des scores

---

## 🎮 Informations du Pack

**Format**: 20 (Minecraft 1.20.1+)  
**Namespace**: `academy_houses`

---

## 📁 Structure du Projet

```
academy_houses/
├── data/
│   ├── academy_houses/
│   │   ├── advancements/
│   │   │   └── pick_starter.json          # Avancement pour choisir un starter
│   │   └── function/
│   │       ├── load.mcfunction            # Initialisation générale
│   │       ├── tick.mcfunction            # Boucle principale (vide)
│   │       ├── reset_test.mcfunction      # Réinitialisation de test
│   │       ├── admin/                     # Commandes administrateur
│   │       │   ├── add_points.mcfunction
│   │       │   ├── assign_fire.mcfunction
│   │       │   ├── assign_grass.mcfunction
│   │       │   └── assign_water.mcfunction
│   │       ├── assign/                    # Logique d'assignation
│   │       │   ├── assign.mcfunction
│   │       │   ├── fire.mcfunction
│   │       │   ├── grass.mcfunction
│   │       │   └── water.mcfunction
│   │       ├── board/                     # Gestion du tableau de bord
│   │       │   ├── add_points.mcfunction
│   │       │   ├── create_boards.mcfunction
│   │       │   └── update.mcfunction
│   │       └── util/                      # Fonctions utilitaires
│   │           ├── count_house_population.mcfunction
│   │           └── init_teams.mcfunction
│   └── minecraft/
│       └── tags/
│           └── function/
│               ├── load.json              # Enregistrement au chargement
│               └── tick.json              # Enregistrement à chaque tick
├── pack.mcmeta                            # Métadonnées du pack
└── README.md                              # Documentation
```

---

## 🚀 Installation et Initialisation

### 1. Chargement du Pack

Le pack s'initialise automatiquement grâce à la fonction `load.mcfunction` appelée au démarrage du serveur.

### 2. Initialisation (`load.mcfunction`)

Crée et initialise :

- **Scoreboard `housePoints`** : Points de chaque maison
- **Scoreboard `housePopulation`** : Population de chaque maison
- **Scoreboard `playerHouse`** : Maison assignée à chaque joueur (0=Salador, 1=Caradaigle, 2=Bulbitard)
- **Scoreboards temporaires** : `tmp`, `random`, `houseDelta`
- **Joueurs virtuels** : Salador, Caradaigle, Bulbitard (avec points initialisés à 0)

```mcfunction
# Exemple d'initialisation personnalisée
function academy_houses:util/init_teams
scoreboard objectives add housePoints dummy
scoreboard objectives add housePopulation dummy
# ... (voir load.mcfunction pour le code complet)
```

---

## 📚 Documentation des Modules

### 🎯 Module d'Assignation (`assign/`)

#### `assign.mcfunction` - Assignation Équilibrée

**Logique** :

1. Recalcule la population actuelle des maisons
2. Trouve la maison avec le moins de joueurs
3. Effectue un tirage aléatoire parmi les maisons les moins peuplées
4. Assigne le joueur à la maison choisie

```mcfunction
# Assignation déclenchée automatiquement via l'avancement
/advancement grant @s only academy_houses:pick_starter
# Cela appelle : academy_houses:assign/assign
```

#### `fire.mcfunction` - Assignation Maison Salador 🔥

- Tag: `hasHouse`
- Équipe: `Salador`
- Couleur: Rouge
- Message: "🔥 Tu rejoins la Maison Salador !"

#### `water.mcfunction` - Assignation Maison Caradaigle 💧

- Tag: `hasHouse`
- Équipe: `Caradaigle`
- Couleur: Bleue
- Message: "💧 Tu rejoins la Maison Caradaigle !"

#### `grass.mcfunction` - Assignation Maison Bulbitard 🌿

- Tag: `hasHouse`
- Équipe: `Bulbitard`
- Couleur: Verte
- Message: "🌿 Tu rejoins la Maison Bulbitard !"

---

### 👨‍⚖️ Module Administrateur (`admin/`)

#### `assign_fire.mcfunction` - Assigner à Salador (Admin)

Force l'assignation d'un joueur à la maison Salador. Nettoie les anciennes maisons avant assignation.

```mcfunction
/execute as @p run function academy_houses:admin/assign_fire
```

#### `assign_grass.mcfunction` - Assigner à Bulbitard (Admin)

Force l'assignation d'un joueur à la maison Bulbitard.

#### `assign_water.mcfunction` - Assigner à Caradaigle (Admin)

Force l'assignation d'un joueur à la maison Caradaigle.

#### `add_points.mcfunction` - Ajouter des Points (Admin)

Ajoute des points à la maison du joueur ciblé.

**Prérequis** :

- Le joueur doit avoir une maison assignée (`playerHouse` entre 0-2)

**Utilisation** :

```mcfunction
/scoreboard players set @s houseDelta 10
/function academy_houses:admin/add_points
```

Message admin : "📜 Points ajoutés à la maison du joueur [NomJoueur]"

---

### 📊 Module Tableau de Bord (`board/`)

#### `create_boards.mcfunction` - Créer le Tableau

Crée trois affichages de texte 3D avec les scores de chaque maison.

**Éléments créés** :

- Titre: "🏆 Classement des Maisons"
- 🔥 Salador : 0
- 💧 Caradaigle : 0
- 🌿 Bulbitard : 0

```mcfunction
# Placer le bloc d'affichage
execute positioned X Y Z run function academy_houses:board/create_boards
```

#### `add_points.mcfunction` - Ajouter des Points

Ajoute les points stockés dans le scoreboard `houseDelta` à la maison du joueur.

**Procédure** :

```mcfunction
# 1. Définir le nombre de points
/scoreboard players set @s houseDelta 5

# 2. Appeler la fonction
/function academy_houses:board/add_points
```

La fonction mets à jour automatiquement le tableau de bord.

#### `update.mcfunction` - Mettre à Jour le Tableau

Synchronise tous les affichages avec les scores actuels des maisons.

```mcfunction
# Mise à jour manuelle
/function academy_houses:board/update
```

Modifie les `text_display` avec les tags:

- `houseBoard` + `Salador`
- `houseBoard` + `Caradaigle`
- `houseBoard` + `Bulbitard`

---

### 🛠️ Module Utilitaire (`util/`)

#### `init_teams.mcfunction` - Initialisation des Équipes

Crée les trois équipes Minecraft et configure leurs propriétés.

**Teams créées** :
| Maison | Couleur | Préfixe |
|--------|---------|---------|
| Salador | Rouge | [Sala] |
| Caradaigle | Bleue | [Cara] |
| Bulbitard | Verte | [Bulb] |

```mcfunction
team add Salador
team modify Salador color red
team modify Salador prefix {"text":"[Sala] ","color":"red"}
# ... (voir init_teams.mcfunction pour le code complet)
```

#### `count_house_population.mcfunction` - Compter la Population

Recalcule le nombre de joueurs dans chaque maison.

**Logique** :

```mcfunction
# Réinitialise les compteurs et compte les joueurs avec chaque tag
execute as @a[tag=Salador] run scoreboard players add Salador housePopulation 1
execute as @a[tag=Caradaigle] run scoreboard players add Caradaigle housePopulation 1
execute as @a[tag=Bulbitard] run scoreboard players add Bulbitard housePopulation 1
```

---

### 📝 Advancements

#### `pick_starter.json`

Déclenche automatiquement l'assignation d'une maison lorsqu'un joueur choisit un Pokémon starter via Cobblemon.

**Trigger** : `cobblemon:pick_starter`  
**Récompense** : Exécute `academy_houses:assign/assign`

```json
{
  "criteria": {
    "starter_chosen": {
      "trigger": "cobblemon:pick_starter"
    }
  },
  "rewards": {
    "function": "academy_houses:assign/assign"
  }
}
```

---

## 🎮 Commandes d'Utilisation

### Pour les Joueurs

#### Rejoindre une Maison (Automatique)

```mcfunction
# Les joueurs rejoignent automatiquement via l'avancement
# Ou manuellement :
/advancement grant @s only academy_houses:pick_starter
```

#### Réinitialiser les Données (Test)

```mcfunction
/function academy_houses:reset_test
# Retire la maison, les tags et réinitialise les scorboards
```

### Pour les Administrateurs

#### Assigner manuellement à une Maison

```mcfunction
# Maison Salador 🔥
/execute as @p run function academy_houses:admin/assign_fire

# Maison Caradaigle 💧
/execute as @p run function academy_houses:admin/assign_water

# Maison Bulbitard 🌿
/execute as @p run function academy_houses:admin/assign_grass
```

#### Ajouter des Points

```mcfunction
# Ajouter 10 points à la maison du joueur
/scoreboard players set @p houseDelta 10
/execute as @p run function academy_houses:admin/add_points

# Ajouter 5 points (joueur ciblé)
/scoreboard players set @s houseDelta 5
/execute as @s run function academy_houses:admin/add_points
```

#### Créer le Tableau de Bord

```mcfunction
# Placer le curseur à la position désirée
/execute positioned 100 65 200 run function academy_houses:board/create_boards
```

#### Mettre à Jour le Tableau

```mcfunction
/function academy_houses:board/update
```

---

## 📊 Scoreboards

| Objective         | Type  | Description                             |
| ----------------- | ----- | --------------------------------------- |
| `housePoints`     | dummy | Points totaux de chaque maison          |
| `housePopulation` | dummy | Nombre de joueurs par maison            |
| `playerHouse`     | dummy | Maison du joueur (0/1/2)                |
| `houseDelta`      | dummy | Nombre de points à ajouter (temporaire) |
| `tmp`             | dummy | Variable temporaire pour calculs        |
| `random`          | dummy | Génération de nombres aléatoires        |

---

## 🏷️ Tags

| Tag          | Description                    | Entité       |
| ------------ | ------------------------------ | ------------ |
| `Salador`    | Membre de la maison Salador    | Joueur       |
| `Caradaigle` | Membre de la maison Caradaigle | Joueur       |
| `Bulbitard`  | Membre de la maison Bulbitard  | Joueur       |
| `hasHouse`   | Joueur assigné à une maison    | Joueur       |
| `houseBoard` | Élément du tableau de bord     | text_display |
| `staff`      | Membre du staff (filtre)       | Joueur       |

---

## 👥 Teams

| Team         | Couleur  | Préfixe | Maison |
| ------------ | -------- | ------- | ------ |
| `Salador`    | 🔴 Rouge | [Sala]  | Feu    |
| `Caradaigle` | 🔵 Bleue | [Cara]  | Eau    |
| `Bulbitard`  | 🟢 Verte | [Bulb]  | Plante |

---

## 🔧 Flux d'Assignation

```
┌─────────────────────────────────────┐
│ Joueur choisit un starter (Cobblemon)│
└──────────────┬──────────────────────┘
               │
               ▼
┌─────────────────────────────────────┐
│ Avancement: pick_starter            │
│ Récompense: academy_houses:assign   │
└──────────────┬──────────────────────┘
               │
               ▼
┌─────────────────────────────────────┐
│ assign.mcfunction                    │
│ 1. Compte la population des maisons │
│ 2. Trouve la plus petite maison     │
│ 3. Tire au sort parmi les petites   │
└──────────────┬──────────────────────┘
               │
               ▼
     ┌─────┬────────┬─────┐
     │     │        │     │
     ▼     ▼        ▼     ▼
 [Fire] [Water] [Grass] [Fallback]
     │     │        │     │
     └─────┴────────┴─────┘
         │
         ▼
┌─────────────────────────────────┐
│ Ajouter tag + équipe + message  │
└─────────────────────────────────┘
```

---

## 🔄 Flux d'Ajout de Points

```
┌──────────────────────────────┐
│ Admin exécute la commande    │
│ /scoreboard players set @s   │
│   houseDelta <points>        │
└──────────┬───────────────────┘
           │
           ▼
┌──────────────────────────────┐
│ /function add_points         │
└──────────┬───────────────────┘
           │
           ▼
┌──────────────────────────────┐
│ Vérifier playerHouse (0-2)   │
│ Ajouter à la maison          │
└──────────┬───────────────────┘
           │
           ▼
┌──────────────────────────────┐
│ /function board/update       │
│ Mettre à jour affichages     │
└──────────┬───────────────────┘
           │
           ▼
┌──────────────────────────────┐
│ Reset houseDelta à 0         │
│ Message de confirmation      │
└──────────────────────────────┘
```

---

## 🛡️ Sécurités Intégrées

1. **Vérification d'assignation** : Les fonctions d'ajout de points vérifient que le joueur a une maison assignée
2. **Fallback équilibrage** : Si le tirage aléatoire échoue, le système reatire une maison valide
3. **Population recalculée** : Toujours recalculée avant assignation pour éviter les désynchronisations
4. **Reset des anciens tags** : Les anciennes maisons sont nettoyées avant assignation
5. **Vérification d'entité** : Les fonctions admin vérifient la présence de l'entité

---

## 🎮 Exemple de Setup Complet

### 1. Démarrage du serveur

Le pack s'initialise automatiquement via `minecraft:load`.

### 2. Créer le tableau de bord

```mcfunction
/execute positioned 100 65 200 run function academy_houses:board/create_boards
```

### 3. Les joueurs rejoignent

```mcfunction
# Les joueurs choisissent un starter Cobklemon
# Automatiquement assignés à une maison équilibrée
```

### 4. Ajouter des points (événements, défis, etc.)

```mcfunction
# Après un événement remporté par Salador
/scoreboard players set @a[tag=Salador] houseDelta 5
/execute as @a[tag=Salador] run function academy_houses:board/add_points
```

### 5. Résultat

Le tableau de bord affiche les scores en temps réel avec mise à jour automatique.

---

## 🐛 Dépannage

### Problème : Les joueurs ne sont pas assignés à une maison

**Solution** : Vérifier que l'avancement Cobklemon `pick_starter` est configuré et que le trigger fonctionne.

### Problème : Le tableau n'affiche pas les bons scores

**Solution** : Exécuter `function academy_houses:board/update` pour forcer une mise à jour.

### Problème : Le comptage de population est incorrect

**Solution** : Exécuter `function academy_houses:util/count_house_population` pour recalculer.

### Problème : Erreur lors de l'ajout de points

**Solution** : Vérifier que le joueur a une maison assignée avec `/scoreboard players get @s playerHouse`.

---

## 📝 Notes Développeur

- Tous les scorboards utilisent la classe "dummy" (pas d'objective spéciale)
- Les entrées virtuelles (Salador, Caradaigle, Bulbitard) servent de compteurs pour les maisons
- L'équilibrage utilise un tirage aléatoire `0..2` pour plus de naturel
- Les text_display sont utilisés pour un affichage 3D persistant et modifiable
- Le système est conçu pour être extensible (ajouter plus de maisons)

---

## 📄 License

N/A (Datapack Minecraft personnalisé)

---

## 👥 Auteur

Academy Houses System v1.0

**Date** : 2026-01-18

---

## 🚀 Améliorations Futures

- [ ] Système de "bonus points" spéciaux
- [ ] Événements de récompense par maison
- [ ] Intégration avec plus de plugins (LiteBans, etc.)
- [ ] Système de niveau par joueur
- [ ] Quêtes quotidiennes par maison
- [ ] Récompenses progressives
- [ ] Effet visuel de particules lors de l'assignation

---

**Dernière mise à jour** : 2026-01-18
