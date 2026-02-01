# Accès et synchronisation — Dépôt README public

## 📍 Informations d'accès

### URL du dépôt GitHub (à créer)

**URL publique** : `https://github.com/StudioMiyukini/miyukini-core-system-readme`

**URL SSH** : `git@github.com:StudioMiyukini/miyukini-core-system-readme.git`

**URL HTTPS** : `https://github.com/StudioMiyukini/miyukini-core-system-readme.git`

---

## 🎯 Objectif

Ce dépôt contient uniquement le **README.md** du projet Miyukini Core System, rendu public pour permettre la découverte du projet sans exposer le code source (dépôt principal privé).

---

## 🚀 Création du dépôt GitHub

### Étape 1 : Créer le dépôt sur GitHub

1. Aller sur https://github.com/new
2. **Repository name** : `miyukini-core-system-readme`
3. **Description** : `README public du projet Miyukini Core System`
4. **Visibilité** : ✅ **Public**
5. ❌ Ne pas cocher "Initialize this repository with a README"
6. Cliquer sur **Create repository**

### Étape 2 : Lier le dépôt local et pousser

```powershell
cd "c:\Users\miyuk\Documents\Cursor\miyukini-core-system-readme"

# Ajouter le remote GitHub
git remote add origin https://github.com/StudioMiyukini/miyukini-core-system-readme.git

# Vérifier que le README est présent
git status

# Ajouter le README
git add README.md

# Créer le commit initial
git commit -m "Initial commit: README public Miyukini Core System"

# Renommer la branche en main
git branch -M main

# Pousser vers GitHub
git push -u origin main
```

---

## 🔄 Synchronisation du README

### Méthode manuelle

Quand vous modifiez le README dans le dépôt principal (`miyukini_kernel`), synchronisez-le ainsi :

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
- **Synchronisation manuelle** — le README doit être synchronisé manuellement ou via script après chaque modification dans le dépôt principal
- **Pas de lien automatique** — ce dépôt est indépendant du dépôt principal

---

## 🔗 Liens utiles

- **Dépôt principal (privé)** : `https://github.com/StudioMiyukini/miyukini-core-system.git`
- **Dépôt README (public)** : `https://github.com/StudioMiyukini/miyukini-core-system-readme`

---

**Dernière mise à jour** : 2026-01-31
