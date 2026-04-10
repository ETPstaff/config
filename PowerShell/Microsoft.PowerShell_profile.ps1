oh-my-posh init pwsh --config "~/custom.omp.json" | Invoke-Expression
if (Get-Alias ls -ErrorAction SilentlyContinue) {
  Remove-Item Alias:ls -Force
}
function ls { lsd $args }
if (Get-Alias tree -ErrorAction SilentlyContinue) {
  Remove-Item Alias:tree -Force
}
function tree { lsd --tree $args }
function vim { nvim $args }
