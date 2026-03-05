$utf8 = [System.Text.Encoding]::UTF8
$files = @('index.html','services.html','gallery.html','contact.html')
$tag = '<link rel="icon" href="img/logo.jpg"><link rel="shortcut icon" href="img/logo.jpg">'

foreach ($f in $files) {
    $path = "C:\Claude Code\headbangbarber\$f"
    $html = [System.IO.File]::ReadAllText($path, $utf8)
    if (-not ($html -match 'rel="icon"')) {
        $html = $html.Replace('</head>', "$tag`r`n</head>")
        [System.IO.File]::WriteAllText($path, $html, $utf8)
        Write-Host "Added favicon: $f"
    } else {
        Write-Host "Already has favicon: $f"
    }
}
Write-Host "Done."
