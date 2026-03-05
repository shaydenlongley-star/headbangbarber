$i = 1
Get-ChildItem 'C:\Claude Code\headbangbarber\img' -Filter '*.png' | ForEach-Object {
    Rename-Item $_.FullName "C:\Claude Code\headbangbarber\img\nail-$i.png"
    Write-Host "Renamed to nail-$i.png"
    $i++
}
Write-Host "Done."
