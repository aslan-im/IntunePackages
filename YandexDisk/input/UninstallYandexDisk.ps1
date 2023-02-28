Start-Process -FilePath "%AppData%\Yandex\YandexDisk2\3.2.25.4801\YandexDisk3Installer-4801.exe" -ArgumentList "/uninstall" -Wait
#Remove Yandex directory in app data
$username = $env:USERNAME
$path = "C:\Users\$username\AppData\Roaming\Yandex"

Remove-Item -Path $path -Recurse -Force -ErrorAction SilentlyContinue