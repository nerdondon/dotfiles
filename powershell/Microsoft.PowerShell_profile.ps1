Import-Module posh-git
Set-PSReadlineOption -BellStyle None
. "D:\Code\dotfiles\powershell\save_windows.ps1"

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
