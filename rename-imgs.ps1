$i = 1
Get-ChildItem 'C:\Claude Code\headbangbarber\img' -Filter '*.jpg' | ForEach-Object {
    Rename-Item $_.FullName "C:\Claude Code\headbangbarber\img\cut-$i.jpg"
    Write-Host "Renamed to cut-$i.jpg"
    $i++
}
Write-Host "Done."
