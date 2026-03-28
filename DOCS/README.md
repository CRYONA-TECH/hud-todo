# HUD TODO

Tactical task manager — interface sci-fi HUD style, cyan, sync multi-appareils.

## Stack

- HTML / CSS / JS vanilla — aucune dépendance npm
- **Firebase Firestore** — base de données cloud temps réel (sync PC ↔ mobile)
- Polices : Orbitron + Share Tech Mono (Google Fonts)

## Firebase

**Firebase** est une plateforme cloud de Google qui fournit des services backend sans serveur.

**Firestore** est sa base de données NoSQL temps réel : les données sont stockées dans le cloud et synchronisées instantanément sur tous les appareils connectés. Chaque modification (ajout, suppression, validation d'une tâche) est propagée en temps réel sans rechargement de page.

**Pourquoi Firebase pour ce projet :**
- Aucun serveur à gérer
- Sync automatique PC ↔ mobile
- Plan gratuit largement suffisant pour un usage personnel (50 000 lectures/jour, 20 000 écritures/jour)
- Intégration directe en HTML vanilla via CDN — pas de npm requis

**Projet Firebase :** `hud-todo` — console : https://console.firebase.google.com

## Structure

```
HUD TODO/
├── .github/
│   └── workflows/
│       └── deploy.yml       ← GitHub Action auto-deploy
├── ARCHIVE/                 ← versions datées — jamais modifiées
├── DEPLOY/                  ← version en ligne (GitHub Pages)
│   └── index.html
├── DOCS/
│   ├── README.md
│   ├── changelog.md
│   ├── TODO.md
│   └── archi_hud_todo.svg
├── SRC/                     ← fichier de travail actif (dernière version uniquement)
│   └── hud_todo_v6.html
└── deploy.bat               ← copie SRC → DEPLOY + archivage automatique
```

## Déploiement

```bash
# 1. Modifier SRC/hud_todo_vX.html
# 2. Déplacer l'ancienne version dans ARCHIVE/
# 3. Lancer deploy.bat (copie vers DEPLOY/index.html)
# 4. Push vers GitHub → Action déclenche le deploy automatique
git add .
git commit -m "feat: description"
git push
```

## URL

`https://cryona-tech.github.io/hud-todo/`

## Fonctionnalités actuelles

- Ajout / suppression / validation de tâches
- Priorités via sphères 3D (vert Basse / orange Normale / rouge Haute)
- Catégories avec filtres
- Barre de progression + compteurs globaux
- Horloge temps réel
- Sync temps réel Firebase Firestore (PC ↔ mobile)
- Indicateur de statut sync dans le header
