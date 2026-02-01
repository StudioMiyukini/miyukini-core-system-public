# Script de synchronisation du README public
# Usage: .\sync-readme.ps1

$ErrorActionPreference = "Stop"

Write-Host "🔄 Synchronisation du README public..." -ForegroundColor Cyan

# Chemins
$repoReadme = "c:\Users\miyuk\Documents\Cursor\miyukini-core-system-readme"
$repoPrincipal = "c:\Users\miyuk\Documents\Cursor\miyukini_kernel"
$readmeSource = Join-Path $repoPrincipal "README.md"
$readmeDest = Join-Path $repoReadme "README.md"

# Vérifier que le README source existe
if (-not (Test-Path $readmeSource)) {
    Write-Host "❌ Erreur: README.md introuvable dans le dépôt principal" -ForegroundColor Red
    Write-Host "   Chemin attendu: $readmeSource" -ForegroundColor Yellow
    exit 1
}

# Copier le README
Write-Host "📋 Copie du README depuis le dépôt principal..." -ForegroundColor Yellow
Copy-Item $readmeSource $readmeDest -Force

# Vérifier les changements git
Set-Location $repoReadme
$status = git status --porcelain

if ($status -match "README.md") {
    Write-Host "✅ Changements détectés dans README.md" -ForegroundColor Green
    
    # Ajouter le fichier
    git add README.md
    
    # Créer le commit
    $commitMessage = "Update README from main repository - $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
    git commit -m $commitMessage
    
    Write-Host "💾 Commit créé: $commitMessage" -ForegroundColor Green
    
    # Demander confirmation pour push
    $confirmation = Read-Host "Voulez-vous pousser les changements vers GitHub? (O/N)"
    if ($confirmation -eq "O" -or $confirmation -eq "o") {
        Write-Host "🚀 Push vers GitHub..." -ForegroundColor Cyan
        git push
        Write-Host "✅ Synchronisation terminée!" -ForegroundColor Green
    } else {
        Write-Host "⏸️  Push annulé. Vous pouvez pousser manuellement avec 'git push'" -ForegroundColor Yellow
    }
} else {
    Write-Host "ℹ️  Aucun changement détecté. README déjà à jour." -ForegroundColor Blue
}

Write-Host "`n✨ Terminé!" -ForegroundColor Cyan
