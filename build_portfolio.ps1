# Read the base64 photo
$b64 = Get-Content "C:\Portfolio\photo_b64.txt" -Raw

# Read the HTML template
$html = Get-Content "C:\Portfolio\index_template.html" -Raw

# Inject the base64 photo
$html = $html -replace 'PHOTO_BASE64_PLACEHOLDER', $b64

# Write final output
[System.IO.File]::WriteAllText("C:\Portfolio\index.html", $html)
Write-Host "Done. File size: $([System.IO.FileInfo]'C:\Portfolio\index.html' | Select-Object -ExpandProperty Length) bytes"
