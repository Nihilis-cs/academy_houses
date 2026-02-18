# Documentation Board & Admin - Academy Houses

## 📋 Vue d'ensemble

Le système Academy Houses comprend deux parties principales pour la gestion et l'affichage des scores des maisons :

- **Board** : Système d'affichage et de gestion des tableaux de scores
- **Admin** : Outils d'administration pour la gestion des maisons et des points

---

## 🏪 Système Board

### Fonctions principales

#### `board/add_points.mcfunction`
**Fonction** : Ajoute des points à la maison d'un joueur
**Usage** :
```mcfunction
# 1. Définir les points à ajouter
scoreboard players set @s houseDelta <nombre_de_points>
# 2. Appeler la fonction
function academy_houses:board/add_points
```

**Processus** :
1. Vérifie que le joueur a une maison (playerHouse: 0-2)
2. Ajoute les points à la bonne maison selon `playerHouse`
3. Met à jour les calculs (leader, podium)
4. Actualise tous les affichages
5. Notifie le changement de classement
6. Remet `houseDelta` à 0

#### `board/clear_near.mcfunction`
**Fonction** : Supprime tous les affichages de tableau dans un rayon de 6 blocs
```mcfunction
kill @e[type=text_display,tag=houseBoard,distance=..6]
```

#### `board/update.mcfunction`
**Fonction** : Met à jour tous les affichages existants
**Processus** :
1. Met à jour les affichages basiques des 3 maisons
2. Recalcule podium et leader
3. Met à jour tous les types d'affichages (podium, detailed, compact, leader)

### Types d'affichages

#### 1. **Compact** 
Affichage simple sur une ligne
- **Création** : `board/create/compact.mcfunction`
- **Format** : `🔥 X | 💧 Y | 🌿 Z`
- **Tag** : `compact`

#### 2. **Detailed**
Affichage détaillé avec titre et rang
- **Création** : `board/create/detailed.mcfunction`  
- **Format** : 
  ```
  📜 Registre Officiel de l'Académie
  🔥 Salador — X pts | Rang Y
  💧 Caradaigle — X pts | Rang Y  
  🌿 Bulbitard — X pts | Rang Y
  ```
- **Tags** : `detailed`, `title`, nom_maison

#### 3. **Leader**
Affiche uniquement la maison dominante
- **Création** : `board/create/leader.mcfunction`
- **Format** :
  ```
  👑 Maison Dominante
  👑 🔥 Salador (ou ❌ si égalité)
  ```
- **Tags** : `leader`, `title`, `leaderBoard`

#### 4. **Podium**
Affichage classement avec médailles
- **Création** : `board/create/podium.mcfunction`
- **Format** :
  ```
  🏆 Classement de l'Académie  
  🥇 🔥 Salador — X
  🥈 💧 Caradaigle — Y
  🥉 🌿 Bulbitard — Z
  ```
- **Tags** : `podium`, `title`, `podium_1`, `podium_2`, `podium_3`

### Orientations directionnelles

Tous les types d'affichages supportent 4 orientations :
- **Sud** (défaut) : `*_south.mcfunction` - Rotation [180.0f, 0.0f]
- **Ouest** : `*_west.mcfunction` - Rotation [270.0f, 0.0f]  
- **Nord** : `*_north.mcfunction` - Rotation [0.0f, 0.0f]
- **Est** : `*_east.mcfunction` - Rotation [90.0f, 0.0f]

Le système détecte automatiquement l'orientation du joueur via `_internal/util/get_direction.mcfunction`.

---

## 🔧 Système Admin

### Fonction d'assignation

#### Assignation des maisons
- `admin/assign_fire.mcfunction` → **Salador** (🔥)
- `admin/assign_water.mcfunction` → **Caradaigle** (💧)
- `admin/assign_grass.mcfunction` → **Bulbitard** (🌿)

**Processus d'assignation** :
1. **Vérification sécurité** : Contrôle qu'un joueur est ciblé
2. **Nettoyage** : Supprime tous les anciens tags de maison
3. **Assignation** : 
   - Définit `playerHouse` (0=Salador, 1=Caradaigle, 2=Bulbitard)
   - Ajoute le tag de maison correspondant
4. **Message RP** : Envoie un message thématique au joueur

**Commandes admin** :
```mcfunction
# Assigner un joueur à Salador
execute as <nom_joueur> run function academy_houses:admin/assign_fire

# Assigner un joueur à Caradaigle  
execute as <nom_joueur> run function academy_houses:admin/assign_water

# Assigner un joueur à Bulbitard
execute as <nom_joueur> run function academy_houses:admin/assign_grass
```

### Gestion des points admin

#### `admin/add_points.mcfunction`
**Fonction** : Version admin de l'ajout de points
**Différences avec board/add_points** :
- Feedback spécial pour le staff : `tellraw @a[tag=staff]`
- Message : "📜 Points ajoutés à la maison du joueur [nom]"
- Même processus technique que la version board

**Usage** :
```mcfunction
# 1. Définir les points
scoreboard players set @s houseDelta <nombre>
# 2. Appeler la fonction admin  
function academy_houses:admin/add_points
```

---

## ⚙️ Système interne (_internal)

### Calculs de classement

#### `_internal/board/compute_leader.mcfunction`
**Fonction** : Détermine la maison leader (gère les ex æquo)
**Processus** :
1. Reset des flags leader pour toutes les maisons
2. Trouve le score maximum
3. Marque toutes les maisons au score max comme leaders

#### `_internal/board/compute_podium.mcfunction` 
**Fonction** : Calcule le classement complet (1er, 2ème, 3ème)
**Processus** :
1. Reset des rangs et copie des scores
2. **Place 1** : Trouve et marque les maxima, les retire
3. **Place 2** : Trouve et marque les maxima restants  
4. **Place 3** : Assigne le rang 3 aux maisons restantes

### Mises à jour d'affichage

#### `_internal/board/update/compact.mcfunction`
Met à jour l'affichage compact : `🔥 X | 💧 Y | 🌿 Z`

#### `_internal/board/update/detailed.mcfunction`
Met à jour l'affichage détaillé avec points et rang pour chaque maison

#### `_internal/board/update/leader.mcfunction`
Met à jour l'affichage du leader (ou "❌" si égalité)

#### `_internal/board/update/podium.mcfunction`
Met à jour l'affichage podium avec médailles et classification

---

## 🎯 Points clés techniques

### Tags utilisés
- **Maisons** : `Salador`, `Caradaigle`, `Bulbitard`
- **Types d'affichage** : `houseBoard`, `compact`, `detailed`, `leader`, `podium`
- **Éléments spéciaux** : `title`, `leaderBoard`, `podium_1`, `podium_2`, `podium_3`
- **Staff** : `staff` (pour notifications admin)

### Scores utilisés  
- **`playerHouse`** : Maison du joueur (0=Salador, 1=Caradaigle, 2=Bulbitard)
- **`housePoints`** : Points de chaque maison
- **`houseDelta`** : Points à ajouter temporairement
- **`leader`** : Flag leader (0/1)
- **`rank`** : Rang dans le classement (1-3)
- **`tmp`** : Variable temporaire pour calculs

### Couleurs et émojis
- **Salador** : 🔥 Rouge (`"red"`)
- **Caradaigle** : 💧 Bleu (`"blue"`) 
- **Bulbitard** : 🌿 Vert (`"green"`)
- **Or/Titre** : (`"gold"`)
- **Médailles** : 🥇🥈🥉 👑

---

## 🚀 Utilisation pratique

### Pour créer un tableau
```mcfunction
# Compact face au joueur
function academy_houses:board/create/compact

# Podium orienté au sud  
function academy_houses:board/create/podium_south

# Detailed face à l'est
function academy_houses:board/create/detailed_east
```

### Pour gérer les points
```mcfunction
# Ajouter 10 points à un joueur
scoreboard players set @s houseDelta 10
function academy_houses:board/add_points

# Version admin avec notification staff
scoreboard players set @s houseDelta 5  
function academy_houses:admin/add_points
```

### Pour nettoyer les affichages
```mcfunction
# Supprimer les tableaux proches
function academy_houses:board/clear_near

# Ou manuellement
kill @e[type=text_display,tag=houseBoard,distance=..10]
```

Ce système offre une gestion complète et flexible des maisons avec des affichages adaptatifs et une administration simplifiée.