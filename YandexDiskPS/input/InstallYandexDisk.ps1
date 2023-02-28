$PackageName = "YandexDisk"
$PathLocal = "$Env:ProgramFiles\_MEM"
Start-Transcript -Path "$PathLocal\Logs\Install$PackageName.log" -Force
$ErrorAction = "Stop"
try{
    Start-Process YandexDisk30SetupPack.exe -ArgumentList "/silent", "/peruser" -Wait
}
catch{
    Write-Error "$_"
}