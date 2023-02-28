$PackageName = "PuntoSwitcher"
$PathLocal = "$Env:ProgramFiles\_MEM"
$username = $env:USERNAME
$path = "C:\Users\$username\AppData\Roaming"
Start-Transcript -Path "$PathLocal\Logs\Install$PackageName.log" -Force
$ErrorAction = "Stop"

$AppFileName = "PuntoSwitcherSetup.exe"
$ArgumentList = @(
    "/quiet", "/uninstall"
)
try {
    Start-Process $AppFileName -ArgumentList $ArgumentList -Wait
}
catch {
    Write-Error "$_"
}