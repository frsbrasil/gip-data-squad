# GIP Data Analyst Squad — Global Installer
$SquadTarget = "C:\Users\frsbr\.gemini\antigravity\xquads-squads\gip-data-squad"
$SkillTarget = "C:\Users\frsbr\.gemini\antigravity\skills\gip-data-squad"
$AgentsTarget = "$env:USERPROFILE\.claude\agents"

Write-Host "`n=== GIP Data Analyst Squad Installer ==="  -ForegroundColor Cyan

if (Test-Path $SquadTarget) {
    Write-Host "`n[1/3] Updating squad..." -ForegroundColor Yellow
    git -C $SquadTarget pull
} else {
    Write-Host "`n[1/3] Installing squad..." -ForegroundColor Yellow
    git clone https://github.com/frsbrasil/gip-data-squad.git $SquadTarget
}

Write-Host "`n[2/3] Installing Antigravity skill..." -ForegroundColor Yellow
if (-not (Test-Path $SkillTarget)) { New-Item -ItemType Directory -Path $SkillTarget | Out-Null }
Copy-Item "$SquadTarget\skills\SKILL.md" -Destination "$SkillTarget\SKILL.md" -Force

Write-Host "`n[3/3] Installing Claude Code subagents globally..." -ForegroundColor Yellow
if (-not (Test-Path $AgentsTarget)) { New-Item -ItemType Directory -Path $AgentsTarget | Out-Null }
Get-ChildItem "$SquadTarget\agents" -Filter "*.md" | ForEach-Object {
    Copy-Item $_.FullName -Destination "$AgentsTarget\da-$($_.Name)" -Force
    Write-Host "  Installed: da-$($_.Name)"
}

Write-Host "`n=== Done! ===" -ForegroundColor Green
Write-Host "Squad  : $SquadTarget"
Write-Host "Skill  : $SkillTarget"
Write-Host "Agents : $AgentsTarget"
Write-Host "`nActivate: @data-director or say 'run analysis'"
