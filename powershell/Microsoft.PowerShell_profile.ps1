Import-Module posh-git
Set-PSReadlineOption -BellStyle None

Write-Host "Locations: repos"
# env aliases
$repos = "D:\Code"

# explore here
function here() {
    explorer .
}

# alias conda
function conda {
    & "C:\Users\seandon\Anaconda3\Scripts\conda.exe" @args
}
