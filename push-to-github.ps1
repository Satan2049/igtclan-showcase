# Run once from this folder after GitHub CLI login:
#   gh auth login
# Then:
#   .\push-to-github.ps1

$ErrorActionPreference = "Stop"
$repo = "igtclan-showcase"

gh auth status | Out-Null

if (-not (gh repo view "Satan2049/$repo" 2>$null)) {
  gh repo create "Satan2049/$repo" --public --source=. --remote=origin --description "iGT CLAN portfolio case study (screenshots + write-up)"
}

git push -u origin main
Write-Host "Done: https://github.com/Satan2049/$repo"
