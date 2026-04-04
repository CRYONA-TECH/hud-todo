# HUD TODO

Tactical task manager — interface sci-fi HUD style, cyan, sync multi-appareils.

## Stack

- HTML / CSS / JS vanilla — aucune dépendance npm
- **Firebase Firestore** — base de données cloud temps réel (sync PC ↔ mobile)
- **Firebase Auth** — authentification Google (accès sécurisé)
- **SortableJS** — drag & drop tâches et catégories (CDN)
- **PWA** — installable sur mobile et PC (manifest + service worker)
- Polices : Orbitron + Share Tech Mono (Google Fonts)

## Firebase

**Firebase** est une plateforme cloud de Google qui fournit des services backend sans serveur.

**Firestore** est sa base de données NoSQL temps réel : les données sont stockées dans le cloud et synchronisées instantanément sur tous les appareils connectés.

**Firebase Auth** gère l'authentification Google : seul le compte autorisé peut accéder aux données. Session mémorisée — reconnexion automatique.

**Pourquoi Firebase :**
- Aucun serveur à gérer
- Sync automatique PC ↔ mobile
- Plan gratuit suffisant (50 000 lectures/jour, 20 000 écritures/jour)
- Intégration directe via CDN, pas de npm
- Mode production sécurisé via règles Firestore + Auth UID

**Projet Firebase :** `hud-todo` — console : https://console.firebase.google.com

## Structure

```
HUD TODO/
├── .github/
│   └── workflows/
│       └── deploy.yml       ← GitHub Action auto-deploy
├── ARCHIVE/                 ← versions datées — jamais modifiées
├── DEPLOY/                  ← version en ligne (GitHub Pages)
│   ├── index.html
│   ├── HUD.ico
│   ├── HUD-192.png
│   ├── HUD-512.png
│   ├── manifest.json
│   └── sw.js
├── DOCS/
│   ├── README.md
│   ├── changelog.md
│   ├── TODO.md
│   └── archi_hud_todo.svg
├── SRC/                     ← fichier de travail actif
│   └── hud_todo_v14.html
└── deploy.bat
```

## Déploiement

```bash
git add .
git commit -m "feat: description"
git push
```

## URL

`https://cryona-tech.github.io/hud-todo/`

## Fonctionnalités

- Authentification Google (session mémorisée)
- Deux onglets : Tactical Task Manager / Tasks Completed
- Ajout / suppression / validation / édition de tâches
- Priorités via sphères 3D (vert Basse / orange Normale / rouge Haute)
- Catégories avec filtres, édition et suppression
- Drag & drop des tâches au sein d'une catégorie
- Drag & drop des blocs de catégorie
- Ordre persisté dans Firestore
- Sync temps réel Firebase (PC ↔ mobile)
- PWA installable — icône écran d'accueil, plein écran sans barre URL
- Favicon `HUD.ico`
