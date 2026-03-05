$utf8 = [System.Text.Encoding]::UTF8
$old = 'https://headbangbarber.netlify.app/'
$new = 'https://headbangbarber-demo.netlify.app/'
Get-ChildItem 'C:\Claude Code\headbangbarber' -Filter '*.html' | ForEach-Object {
    $c = [System.IO.File]::ReadAllText($_.FullName, $utf8)
    if ($c.Contains($old)) {
        [System.IO.File]::WriteAllText($_.FullName, $c.Replace($old, $new), $utf8)
        Write-Host "Updated: $($_.Name)"
    }
}
Write-Host "Done."
