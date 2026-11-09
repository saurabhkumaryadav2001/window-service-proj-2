$ErrorActionPreference="Stop"
$exe=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot "..\\publish\\PcHealthMonitor.Worker.exe"))
if(!(Test-Path $exe)){throw "Executable not found: $exe. Publish first and adjust path if needed."}
if(Get-Service PcHealthMonitor -ErrorAction SilentlyContinue){throw "Service already exists; uninstall first."}
New-Service -Name PcHealthMonitor -DisplayName "PC Health Monitor" -BinaryPathName "`"$exe`"" -StartupType Automatic
Start-Service PcHealthMonitor
Write-Host "PC Health Monitor installed and started."
