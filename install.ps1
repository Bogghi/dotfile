# Windows bootstrap: nvim, lazygit, git, claude. Symlinks need Developer Mode (else falls back to copy).
$d = "$HOME\dotfile"
function Link($dst, $src) {
  New-Item -ItemType Directory -Force (Split-Path $dst) | Out-Null
  Remove-Item $dst -Recurse -Force -ErrorAction SilentlyContinue
  try { New-Item -ItemType SymbolicLink -Path $dst -Target $src -ErrorAction Stop | Out-Null }
  catch { Copy-Item $src $dst -Recurse }
}
Link "$env:LOCALAPPDATA\nvim" "$d\nvim"
Link "$env:APPDATA\lazygit\config.yml" "$d\lazygit\config.yml"
Link "$HOME\.gitconfig" "$d\.gitconfig"
Link "$HOME\.claude\themes\carbonfox.json" "$d\claude\themes\carbonfox.json"
