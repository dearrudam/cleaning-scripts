# Uninstall STK
Get-Package -Name stkcli | Uninstall-Package -Force
# Removing STK installation directory recursively
Remove-Item -Path "$env:HOMEDRIVE$env:HOMEPATH\.stk\" -Force -Recurse