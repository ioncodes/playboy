param ([string]$path)
$bytes = [System.IO.File]::ReadAllBytes($path)
$bytes | ForEach-Object { $_.ToString("X2") } | Out-File rom.hex -Encoding ASCII