# Changelog

## v3.0 — 2026-03-28

### Fonctionnalités

- Système de catégories : bouton `+ Add category` → modale HUD style
- Sélecteur de catégorie dans la zone de saisie
- Tâches classées par blocs de catégorie avec header + compteur done/total
- Bloc `◌ Sans catégorie` pour les tâches non classées
- Suppression de catégorie (tâches déplacées en sans catégorie)
- Fix : comparaison stricte string/string pour les IDs de catégorie (compteur missions corrigé)
- localStorage sur clés `hud_tasks_v3` / `hud_cats_v3`

---

## v2.0 — 2026-03-28

### Fonctionnalités

- Fond bleu nuit `#020818` / `#030d24` (vs vert-noir v1)
- Largeur desktop 80% via `padding: 32px 10%` sur body
- Toutes les tailles en `px` — suppression des `rem`
- Police minimum `16px` partout
- Classes CSS préfixées `hud-todo-`, variables CSS `--ht-`, IDs JS `ht-`

---

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
- Responsive mobile

### Infrastructure — 2026-03-28

- Structure projet : `SRC/` `DEPLOY/` `ARCHIVE/` `DOCS/` `.github/workflows/`
- `deploy.bat` : copie SRC → DEPLOY/index.html + archivage daté automatique
- `deploy.yml` : GitHub Action — push `SRC/hud_todo_v*.html` → branche `gh-pages`
- Token PAT scopes `repo` + `workflow` requis
- Branche locale `master` renommée en `main`
- GitHub Pages configuré sur branche `gh-pages` / `/(root)`
- Site live : https://cryona-tech.github.io/hud-todo/

### Known issues

- Warning Node.js 20 deprecated sur `actions/checkout@v4.2.2` et `peaceiris/actions-gh-pages@v4.0.0` — non bloquant
