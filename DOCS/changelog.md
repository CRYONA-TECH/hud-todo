# Changelog

## v1.0 — 2026-03-28

### Initial release

- Interface HUD sci-fi, bordures cyan, fond `#020c10`
- Polices Orbitron (titres) + Share Tech Mono (corps)
- Scan line animée + coins HUD
- Sphères 3D rouge / orange / vert comme picklist de priorité
- Mini-sphère affichée dans chaque tâche
- Bordure gauche colorée par priorité
- Barre de progression avec glow cyan
- Compteurs : total / exécutées / en attente
- Horloge temps réel HH:MM:SS
- Persistance `localStorage`
- Responsive mobile (border supprimée sur petit écran)

### Infrastructure — 2026-03-28

- Structure projet : `SRC/` `DEPLOY/` `ARCHIVE/` `DOCS/`
- `deploy.bat` : copie SRC → DEPLOY/index.html + archivage daté automatique
- `deploy.yml` : GitHub Action — push `SRC/hud_todo_v*.html` → branche `gh-pages`
- Trigger manuel `workflow_dispatch` activé
- GitHub Pages configuré sur branche `gh-pages` / `/(root)`
- Site live : https://cryona-tech.github.io/hud-todo/

### Known issues

- Warning Node.js 20 deprecated sur `actions/checkout@v4` et `peaceiris/actions-gh-pages@v4` — non bloquant, à corriger en v1.1
