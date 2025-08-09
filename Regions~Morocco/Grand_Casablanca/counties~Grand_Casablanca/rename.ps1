Get-ChildItem -Recurse -Filter 'N_A(*' | ForEach-Object {
    if ($_.Name -match '^N_A\((.+)\)(\..+)?$') {
        Write-Host $_
        Rename-Item $_ "$($matches[1])$($matches[2])"
    }
}
