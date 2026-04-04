# Changelog

## v14.0 — 2026-04-04

- PWA : ajout `manifest.json` + service worker `sw.js`
- Icônes PNG 192x192 et 512x512 pour installation mobile
- Lien manifest + enregistrement service worker dans `<head>`
- `deploy.yml` mis à jour pour copier `manifest.json`, `sw.js`, `HUD-192.png`, `HUD-512.png` vers `gh-pages`
- Installation PWA validée sur Samsung Internet (plein écran, icône HUD)

---

## v13.0 — 2026-03-28

- Drag & drop des tâches au sein d'une catégorie (handle `⠿`, SortableJS)
- Drag & drop des blocs de catégorie
- Ordre sauvegardé dans Firestore (champ `order`)
- Panel "Tasks Completed" non draggable

---

## v12.0 — 2026-03-28

- Icône `✎` pour éditer le nom d'une tâche
- Icône `✎` pour éditer le nom d'une catégorie
- Fix : `currentPrio` et `filterCat` déclarés au bon endroit

---

## v11.0 — 2026-03-28

- Fix déclaration variables `currentPrio` / `filterCat`

---

## v10.0 — 2026-03-28

- Deux onglets HUD : `◈ TACTICAL TASK MANAGER` / `◈ TASKS COMPLETED`
- Tâches actives et accomplies séparées
- Compteurs `X/Y` supprimés des headers catégorie

---

## v9.0 — 2026-03-28

- Favicon `HUD.ico` + `deploy.yml` mis à jour

---

## v8.0 — 2026-03-28

- Firebase Auth Google + mode production Firestore

---

## v7.0 — 2026-03-28

- Priorité par défaut : Basse (sphère verte)

---

## v6.0 — 2026-03-28

- Ordre sphères inversé : vert → orange → rouge

---

## v5.0 — 2026-03-28

- Firebase Firestore sync temps réel PC ↔ mobile

---

## v4.0 — 2026-03-28

- Filtres par catégorie

---

## v3.0 — 2026-03-28

- Système de catégories

---

## v2.0 — 2026-03-28

- Fond bleu nuit, largeur 80%, px, préfixes CSS

---

## v1.0 — 2026-03-28

- Interface HUD sci-fi, sphères priorité, localStorage, responsive mobile
- Infrastructure : GitHub Pages, GitHub Action, deploy.bat
