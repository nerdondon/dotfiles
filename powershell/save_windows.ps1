function saveExplorerSession {
    $saveFolder = "C:\Users\seandon\saved_windows"
    $saveFileName = "saved_windows.json"
    $saveFileLocation = $saveFolder + "\" + $saveFileName
    $explorer = New-Object -com "Shell.Application";
    $windowPaths = $explorer.windows() | select-object LocationUrl | ForEach-Object { $_.LocationUrl -replace "file://", "" }

    Write-Output "Found $($windowPaths.length) window(s)"

    $windowObjects = [System.Collections.Generic.List[PSObject]]::new()
    foreach ($path in $windowPaths) {
        Write-Output "Processing $($path)"
        $isLocal = $path.StartsWith("/")
        $normalizedPath = [System.Web.HttpUtility]::UrlDecode($isLocal ? $path.Substring(1) : "\\" + $path)
        $window = [PSCustomObject]@{
            Path    = $normalizedPath
            IsLocal = $isLocal
        }
        $windowObjects.Add($window)
    }

    $saveFolderExists = Test-Path $saveFolder
    if (!$saveFolderExists) {
        New-Item -Path $saveFolder -ItemType "Directory"
    }

    if (Test-Path $saveFileLocation) {
        Write-Output "$($saveFileLocation) already exists. Will overwrite existing saved session."
    }

    Write-Output "Attempting to save session to $($saveFileLocation)"
    ConvertTo-Json $windowObjects | Out-File $saveFileLocation
    Write-Output "Saved session"
}

function restoreExplorerSession([bool]$dryRun) {
    $saveFolder = "C:\Users\seandon\saved_windows"
    $saveFileName = "saved_windows.json"
    $saveFileLocation = $saveFolder + "\" + $saveFileName

    if (!(Test-Path $saveFileLocation)) {
        Write-Output "$($saveFileLocation) does not exist. Exiting."
        return
    }

    $windows = Get-Content $saveFileLocation | ConvertFrom-Json
    foreach ($path in $windows) {
        Write-Output "Attempting to open $($path)"

        if (!(Test-Path -PathType Container $path.Path)) {
            Write-Output "$($path.Path) does not exist or is not a directory. Skipping."
            continue
        }

        if ($dryRun) {
            continue
        }

        if ($path.IsLocal) {
            Invoke-Item $path.Path
            continue
        }

        Invoke-Item "\\$($path.Path)"
    }
}
