$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

Write-Host "==> Building Hugo site..." -ForegroundColor Cyan
hugo --minify

Write-Host "==> Staging changes..." -ForegroundColor Cyan
git add -A

Write-Host "==> Committing..." -ForegroundColor Cyan
if ($args.Count -gt 0) {
    $msg = $args -join " "
    git commit -m $msg
} else {
    $now = Get-Date -Format "yyyy-MM-dd HH:mm"
    git commit -m "update: $now"
}

if ($LASTEXITCODE -ne 0) {
    Write-Host "(nothing to commit, skipping push)" -ForegroundColor Yellow
    exit 0
}

Write-Host "==> Pushing..." -ForegroundColor Cyan
git push

Write-Host "==> Done. https://kel1n1995.github.io/" -ForegroundColor Green
