# 自动重试 git push，直到成功为止
while ($true) {
    git push origin main
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✅ Push 成功！" -ForegroundColor Green
        break
    } else {
        Write-Host "❌ Push 失败，1 秒后重试..." -ForegroundColor Yellow
        Start-Sleep -Seconds 1
    }
}
