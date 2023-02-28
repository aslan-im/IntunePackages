$PackageName = "PuntoSwitcher"
$PathLocal = "$Env:ProgramFiles\_MEM"
Start-Transcript -Path "$PathLocal\Logs\Install$PackageName.log" -Force
$ErrorAction = "Stop"
$AppFileName = "PuntoSwitcherSetup.exe"
$ArgumentList = @(
    "/quiet"
)
try {
    Start-Process $AppFileName -ArgumentList $ArgumentList -Wait
}
catch {
    Write-Error "$_"
}