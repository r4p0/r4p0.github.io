param (
    [string]$gamedir
)
Write-Host $gamedir

Write-Host "$([char]0x6b63)$([char]0x5728)$([char]0x83b7)$([char]0x53d6)$([char]0x62bd)$([char]0x5361)$([char]0x5206)$([char]0x6790)$([char]0x94fe)$([char]0x63a5)..." -ForegroundColor Green
Write-Host " "

$cachefile = "$gamedir\Client\Saved\Logs\Client.log"

if (-Not [System.IO.File]::Exists($cachefile)) {
    Write-Host "$([char]0x672a)$([char]0x627e)$([char]0x5230)$([char]0x6e38)$([char]0x620f)$([char]0x5b89)$([char]0x88c5)$([char]0x76ee)$([char]0x5f55)$([char]0xff0c)$([char]0x8bf7)$([char]0x7528)$([char]0x8bb0)$([char]0x4e8b)$([char]0x672c)$([char]0x6253)$([char]0x5f00)$([char]0x672c)$([char]0x811a)$([char]0x672c)$([char]0x624b)$([char]0x52a8)$([char]0x66ff)$([char]0x6362)$([char]0x4fee)$([char]0x6539)$([char]0x24)$([char]0x63)$([char]0x61)$([char]0x63)$([char]0x68)$([char]0x65)$([char]0x66)$([char]0x69)$([char]0x6c)$([char]0x65)$([char]0x7684)$([char]0x8def)$([char]0x5f84)" -ForegroundColor Red
    Write-Host "$([char]0x8bf7)$([char]0x6309)$([char]0x4efb)$([char]0x610f)$([char]0x952e)$([char]0x9000)$([char]0x51fa)..." -ForegroundColor Yellow -NoNewline
    $null = [Console]::ReadKey($true)
    Exit
}

$tmpfile = "$env:TEMP\WutheringWaves.log"

Copy-Item $cachefile -Destination $tmpfile

$content = Get-Content -Encoding UTF8 -Raw $tmpfile
$found = $content -match "https.+aki-gm-resources.aki-game.com/aki/gacha/index.html.+&platform=PC"

Remove-Item $tmpfile

if (-Not $found) {
    Write-Host "$([char]0x627e)$([char]0x4e0d)$([char]0x5230)$([char]0x539f)$([char]0x795e)$([char]0x65e5)$([char]0x5fd7)$([char]0x6587)$([char]0x4ef6)$([char]0x8bf7)$([char]0x81f3)$([char]0x5c11)$([char]0x6253)$([char]0x5f00)$([char]0x7948)$([char]0x613f)$([char]0x5386)$([char]0x53f2)$([char]0x754c)$([char]0x9762)$([char]0x4e00)$([char]0x6b21)" -ForegroundColor Red
    return
}

$wishHistoryUrl = $matches[$found.Length-1]

Write-Host $wishHistoryUrl
Set-Clipboard -Value $wishHistoryUrl
Write-Host " "
Write-Host "$([char]0x62bd)$([char]0x5361)$([char]0x5206)$([char]0x6790)$([char]0x5730)$([char]0x5740)$([char]0x83b7)$([char]0x53d6)$([char]0x6210)$([char]0x529f)$([char]0xff0c)$([char]0x8bf7)$([char]0x590d)$([char]0x5236)$([char]0x5230)$([char]0x201c)$([char]0x63d0)$([char]0x74e6)$([char]0x7279)$([char]0x5c0f)$([char]0x52a9)$([char]0x624b)$([char]0x201d)$([char]0x4f7f)$([char]0x7528)" -ForegroundColor Green
Write-Host "$([char]0x63d0)$([char]0x74e6)$([char]0x7279)$([char]0x5c0f)$([char]0x52a9)$([char]0x624b)$([char]0x795d)$([char]0x60a8)$([char]0x6c14)$([char]0x6ee1)$([char]0x6ee1)$([char]0xff0c)$([char]0x5341)$([char]0x8fde)$([char]0x51fa)$([char]0x91d1)$([char]0xff0c)$([char]0x5c0f)$([char]0x4fdd)$([char]0x5e95)$([char]0x5fc5)$([char]0x4e2d)$([char]0xff01)" -ForegroundColor Yellow

Write-Host "$([char]0x7b49)$([char]0x5f85)" -NoNewline
Write-Host "5" -ForegroundColor Yellow -NoNewline
Write-Host "$([char]0x79d2)$([char]0x540e)$([char]0x81ea)$([char]0x52a8)$([char]0x5173)$([char]0x95ed)" -ForegroundColor Green -NoNewline

# 倒计时动画
foreach ($i in 5..1) {
    [Console]::SetCursorPosition(4, [Console]::CursorTop)
    Write-Host $i -ForegroundColor Yellow -NoNewline
    Start-Sleep -Seconds 1
}

Write-Host ""