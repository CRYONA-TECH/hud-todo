# HUD TODO

Tactical task manager — interface sci-fi HUD style, cyan, standalone HTML.

## Stack

- HTML / CSS / JS vanilla — aucune dépendance
- Stockage : `localStorage` (standalone) / `window.storage` (claude.ai)
- Polices : Orbitron + Share Tech Mono (Google Fonts)

## Structure

```
HUD TODO/
├── DEPLOY/          ← version en ligne (GitHub Pages)
│   └── index.html
├── ARCHIVE/         ← versions datées — jamais modifiées
├── DOCS/
│   ├── README.md
│   ├── changelog.md
│   └── TODO.md
└── SRC/             ← fichier de travail actif
    └── hud_todo_v1.html
```

## Déploiement

1. Modifier `SRC/hud_todo_vX.html`
2. Copier vers `DEPLOY/index.html`
3. Archiver l'ancienne version dans `ARCHIVE/YYYY-MM-DD_vX.html`
4. Commit + push → GitHub Pages publie automatiquement

## URL

`https://[pseudo].github.io/hud-todo/`

## Fonctionnalités v1

- Ajout / suppression de tâches
- Priorité via sphères 3D rouge / orange / vert
- Barre de progression + compteurs
- Horloge temps réel
- Scan line animée, style HUD cyan
- Persistance `localStorage`
