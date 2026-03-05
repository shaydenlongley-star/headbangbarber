$utf8 = [System.Text.Encoding]::UTF8
$files = @('index.html','services.html','gallery.html','contact.html')

foreach ($f in $files) {
    $path = "C:\Claude Code\headbangbarber\$f"
    $html = [System.IO.File]::ReadAllText($path, $utf8)

    # Replace nav brand text with logo image
    $html = $html.Replace(
        '<a href="index.html" class="nav-brand">HEADBANG BARBER</a>',
        '<a href="index.html" class="nav-brand"><img src="img/logo.jpg" alt="HEADBANG BARBER" class="nav-logo"></a>'
    )

    # Replace footer brand text
    $html = $html.Replace(
        'HEADBANG BARBER
                <span>Bangkok · Cuts &amp; Nails</span>',
        '<img src="img/logo.jpg" alt="HEADBANG BARBER" class="footer-logo-img">
                <span>Bangkok · Cuts &amp; Nails</span>'
    )

    [System.IO.File]::WriteAllText($path, $html, $utf8)
    Write-Host "Updated: $f"
}
Write-Host "Done."
