$PackageName = "YandexDisk"
$PathLocal = "$Env:ProgramFiles\_MEM"
$username = $env:USERNAME
$path = "C:\Users\$username\AppData\Roaming"
Start-Transcript -Path "$PathLocal\Logs\Install$PackageName.log" -Force
$ErrorAction = "Stop"
try{
    Start-Process -FilePath "$path\Yandex\YandexDisk2\3.2.25.4801\YandexDisk3Installer-4801.exe" -ArgumentList "/uninstall" -Wait
}
catch{
    Write-Output "_______________________________________________________"
    Write-Error "$_"
}

try{
    Remove-Item -Path "$path\Yandex" -Recurse -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "$path\Microsoft\Windows\Start Menu\Programs\Yandex.Disk" -Recurse -Force -ErrorAction SilentlyContinue
}
catch{
    continue
}




