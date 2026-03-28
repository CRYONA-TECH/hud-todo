# Changelog

## v6.0 — 2026-03-28

- Ordre des sphères de priorité inversé : vert (Basse) → orange (Normale) → rouge (Haute)

---

## v5.0 — 2026-03-28

- Remplacement de `localStorage` par **Firebase Firestore**
- Sync temps réel PC ↔ mobile via `onSnapshot`
- Indicateur de statut sync dans le header : CONNECTING / SYNCED / WRITING / ERROR
- IDs tâches et catégories en strings Firestore
- `type="module"` sur le script — chargement Firebase via CDN gstatic

---

## v4.0 — 2026-03-28

- Barre de filtres par catégorie (boutons toggle)
- Filtre "Toutes catégories" + un bouton par catégorie créée
- Suppression catégorie → reset filtre si catégorie active supprimée
- Suppression filtres priorité (non demandés)
- Label sphère rouge : "Critique" → "Haute"

---

## v3.0 — 2026-03-28

- Système de catégories : bouton `+ Add category` → modale HUD
- Sélecteur de catégorie dans la zone de saisie
- Tâches classées par blocs de catégorie avec header + compteur done/total
- Bloc `◌ Sans catégorie` pour les tâches non classées
- Suppression de catégorie (tâches déplacées en sans catégorie)
- Fix compteur missions : comparaison stricte string/string sur les IDs

---

## v2.0 — 2026-03-28

- Fond bleu nuit `#020818` / `#030d24`
- Largeur desktop 80% via `padding: 32px 10%`
- Toutes les tailles en `px`
- Police minimum `16px`
- Classes CSS préfixées `hud-todo-`, variables `--ht-`, IDs JS `ht-`

---

## v1.0 — 2026-03-28

### Initial release

- Interface HUD sci-fi, bordures cyan, fond `#020c10`
- Polices Orbitron + Share Tech Mono
- Scan line animée + coins HUD
- Sphères 3D priorité + mini-sphère dans chaque tâche
- Barre de progression glow cyan
- Compteurs total / exécutées / en attente
- Horloge temps réel
- Persistance `localStorage`
- Responsive mobile

### Infrastructure

- Structure projet : `SRC/` `DEPLOY/` `ARCHIVE/` `DOCS/` `.github/workflows/`
- `deploy.bat` : copie SRC → DEPLOY/index.html + archivage daté
- `deploy.yml` : GitHub Action → branche `gh-pages` (JamesIves action)
- Token PAT scopes `repo` + `workflow`
- GitHub Pages sur branche `gh-pages`
- Site live : https://cryona-tech.github.io/hud-todo/
