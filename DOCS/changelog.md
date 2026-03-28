# Changelog

## v9.0 — 2026-03-28

- Ajout favicon `HUD.ico` dans `DEPLOY/`
- Lien favicon dans `<head>` : `<link rel="icon" type="image/x-icon" href="HUD.ico" />`
- Modification `deploy.yml` pour copier `HUD.ico` vers branche `gh-pages`

---

## v8.0 — 2026-03-28

- Firebase Auth Google intégré
- Bouton `⬡ Sign in` dans le header (masqué après connexion)
- Reconnexion automatique après premier login
- Indicateur sync affiche `SYNCED — PRENOM` une fois connecté
- Listeners Firestore activés uniquement après authentification
- Règles Firestore passées en mode production (UID unique autorisé)
- Domaine `cryona-tech.github.io` ajouté aux domaines autorisés Firebase

---

## v7.0 — 2026-03-28

- Priorité par défaut : `low` (sphère verte active au chargement)

---

## v6.0 — 2026-03-28

- Ordre des sphères inversé : vert (Basse) → orange (Normale) → rouge (Haute)

---

## v5.0 — 2026-03-28

- Remplacement de `localStorage` par Firebase Firestore
- Sync temps réel PC ↔ mobile via `onSnapshot`
- Indicateur de statut sync dans le header
- IDs tâches et catégories en strings Firestore

---

## v4.0 — 2026-03-28

- Filtres par catégorie (boutons toggle)
- Suppression filtres priorité
- Label sphère rouge : "Critique" → "Haute"

---

## v3.0 — 2026-03-28

- Système de catégories avec modale HUD
- Tâches classées par blocs de catégorie
- Fix compteur missions (comparaison stricte string/string)

---

## v2.0 — 2026-03-28

- Fond bleu nuit, largeur 80%, tailles en px, préfixes CSS `hud-todo-`

---

## v1.0 — 2026-03-28

- Interface HUD sci-fi, sphères priorité, localStorage, responsive mobile
- Infrastructure : GitHub Pages, GitHub Action, deploy.bat
