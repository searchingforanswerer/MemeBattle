while ($true) {
    git push origin main
    if ($LASTEXITCODE -eq 0) {
        Write-Host "[OK] Push succeeded!" -ForegroundColor Green
        break
    } else {
        Write-Host "[Failed] Push failed, retrying in 5 seconds..." -ForegroundColor Yellow
        Start-Sleep -Seconds 5
    }
}
