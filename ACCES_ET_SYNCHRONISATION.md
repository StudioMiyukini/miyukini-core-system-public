# Accès et synchronisation — Dépôt README public

## 📍 Informations d'accès

### URL du dépôt GitHub

**URL publique** : `https://github.com/StudioMiyukini/miyukini-core-system-public`

**URL SSH** : `git@github.com:StudioMiyukini/miyukini-core-system-public.git`

**URL HTTPS** : `https://github.com/StudioMiyukini/miyukini-core-system-public.git`

---

## 🎯 Objectif

Ce dépôt contient uniquement le **README.md** du projet Miyukini Core System, rendu public pour permettre la découverte du projet sans exposer le code source (dépôt principal privé).

---

## 🚀 Création du dépôt GitHub

### État actuel

✅ **Le dépôt GitHub est créé et le code a été poussé avec succès.**

**URL du dépôt** : https://github.com/StudioMiyukini/miyukini-core-system-public

Le dépôt contient :
- README.md (copié depuis le dépôt principal)
- ACCES_ET_SYNCHRONISATION.md (documentation)
- sync-readme.ps1 (script de synchronisation)

---

## 🔄 Synchronisation du README

### ⚠️ IMPORTANT : Procédure complète

**En cas de modification du README, celui-ci doit être poussé sur les 2 dépôts :**

1. **Dépôt principal (privé)** : commit et push normal dans `miyukini_kernel`
2. **Dépôt public** : synchronisation manuelle ou via script dans `miyukini-core-system-readme`

### Étape 1 : Commit et push dans le dépôt principal

```powershell
cd "c:\Users\miyuk\Documents\Cursor\miyukini_kernel"

# Modifier le README.md si nécessaire
# Puis commit et push
git add README.md
git commit -m "docs: mise a jour README"
git push
```

### Étape 2 : Synchroniser le dépôt public

**Méthode manuelle** :

```powershell
cd "c:\Users\miyuk\Documents\Cursor\miyukini-core-system-readme"

# Copier le README depuis le dépôt principal
Copy-Item "..\miyukini_kernel\README.md" . -Force

# Vérifier les changements
git status

# Ajouter et commiter
git add README.md
git commit -m "Update README from main repository"

# Pousser vers GitHub
git push
```

### Méthode automatique (script PowerShell)

Un script `sync-readme.ps1` est disponible dans ce dépôt. Pour l'utiliser :

```powershell
cd "c:\Users\miyuk\Documents\Cursor\miyukini-core-system-readme"
.\sync-readme.ps1
```

Le script :
1. Copie automatiquement le README depuis le dépôt principal
2. Vérifie s'il y a des changements
3. Crée un commit si nécessaire
4. Demande confirmation avant de pousser

---

## 📁 Structure du dépôt

```
miyukini-core-system-readme/
├── README.md                    # README principal (copié depuis miyukini_kernel)
├── ACCES_ET_SYNCHRONISATION.md  # Ce fichier (documentation)
└── sync-readme.ps1              # Script de synchronisation (optionnel)
```

---

## ⚠️ Notes importantes

- **Ce dépôt ne contient QUE le README.md** — aucun code source ni documentation technique
- **Le dépôt principal reste privé** — seul le README est public
- **⚠️ Synchronisation obligatoire** — **En cas de modification du README, celui-ci doit être poussé sur les 2 dépôts** :
  1. Dépôt principal (`miyukini_kernel`) — commit et push normal
  2. Dépôt public (`miyukini-core-system-readme`) — synchronisation manuelle ou via script
- **Pas de lien automatique** — ce dépôt est indépendant du dépôt principal, la synchronisation doit être faite manuellement

---

## 🔗 Liens utiles

- **Dépôt principal (privé)** : `https://github.com/StudioMiyukini/miyukini-core-system.git`
- **Dépôt README (public)** : `https://github.com/StudioMiyukini/miyukini-core-system-public`

---

**Dernière mise à jour** : 2026-01-31
