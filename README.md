# Windows PC Health Monitor Service

A .NET 8 Windows Worker Service that samples CPU, memory and disk usage and writes timestamped JSONL telemetry for lightweight observability.

## Features
- Configurable sampling interval
- CPU and memory metrics (Windows performance counters)
- Disk free-space monitoring for configured drives
- JSON Lines output and rolling daily files
- Warning thresholds and Windows Event Log/console logging
- Windows Service installation scripts

## Build
```powershell
dotnet restore
dotnet publish -c Release -r win-x64 --self-contained true
```

Configure appsettings.json before installation. Run scripts in elevated PowerShell. Give the service account write access to the log directory. Metrics are host-level; this is not a security/antivirus product.

MIT License
