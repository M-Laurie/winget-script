#Establecer zona horaria de chile (UTC-04:00)
tzutil /s "Pacific SA Standard Time"

#Sincronizar hora del dispositivo
w32tm /resync

##################
#Cambiar tema a tema oscuro "Brillo"
# Ruta al archivo de tema .theme
$themeFilePath = "C:\Windows\Resources\Themes\themeA.theme"

# Aplicar el tema
Invoke-Expression -Command "& `"$themeFilePath`""
##################

##################
# Desinstalar OneDrive (versión clásica)

# Ruta del ejecutable de OneDrive
$onedrivePath = "$env:SystemRoot\System32\OneDriveSetup.exe"

# Comprobar si el ejecutable de OneDrive existe
if (Test-Path $onedrivePath) {
    # Ejecutar el desinstalador de OneDrive
    Start-Process -FilePath $onedrivePath -ArgumentList "/uninstall" -NoNewWindow -Wait
    Write-Output "OneDrive desinstalado exitosamente (versión clásica)."
} else {
    Write-Output "No se encontró OneDrive (versión clásica)."

    # Desinstalar OneDrive (Microsoft Store, si está instalado)
    $storeApps = Get-AppxPackage -Name "*OneDrive*"

    if ($storeApps) {
        foreach ($app in $storeApps) {
            # Desinstalar la aplicación de la Microsoft Store
            Remove-AppxPackage -Package $app.PackageFullName
            Write-Output "OneDrive desinstalado exitosamente (Microsoft Store)."
        }
    } else {
        Write-Output "No se encontró OneDrive (Microsoft Store)."
    }
}

##################

#Instalar VCredist
winget install Microsoft.VCRedist.2005.x86
winget install Microsoft.VCRedist.2005.x64
winget install Microsoft.VCRedist.2008.x86
winget install Microsoft.VCRedist.2008.x64
winget install Microsoft.VCRedist.2010.x86
winget install Microsoft.VCRedist.2010.x64
winget install Microsoft.VCRedist.2012.x86
winget install Microsoft.VCRedist.2012.x64
winget install Microsoft.VCRedist.2013.x86
winget install Microsoft.VCRedist.2013.x64
winget install Microsoft.VCRedist.2015+.x86
winget install Microsoft.VCRedist.2015+.x64

#instalar Git
winget install Git.Git

#instalar Epic Games
winget install EpicGames.EpicGamesLauncher

#instalar powertoys
winget install Microsoft.Powertoys

#instalar vscode
winget install Microsoft.VisualStudioCode

#instalar java
winget install Microsoft.OpenJDK.17

#instalar steam
winget install Valve.Steam

#instalar zoom
winget install Zoom.Zoom

#instalar discord
winget install -e --id Discord.Discord

#instalar whatsapp
winget install -e --id WhatsApp.WhatsApp

#instalar notepad++
winget install -e --id Notepad++.Notepad++

#instalar legion toolkit
winget install --id=BartoszCichecki.LenovoLegionToolkit  -e

#instalar google chrome
winget install -e --id Google.Chrome

#instalar opera GX
winget install -e --id Opera.OperaGX

#instalar WinRar
winget install -e --id RARLab.WinRAR

#instalar spotify
winget install -e --id Spotify.Spotify

#instalar docker desktop
winget install --id=Docker.DockerDesktop  -e

#instalar node
winget install --id=OpenJS.NodeJS  -e

#instalar postman
winget install --id=Postman.Postman  -e

#instalar winSCP
winget install --id=WinSCP.WinSCP  -e

#instalar arduinoIDE
winget install --id=ArduinoSA.IDE.stable  -e

#instalar Atlus
winget install --id=AmanHarwara.Altus  -e

#instalar ToolBox
winget install --id=JetBrains.Toolbox  -e

#instalar nileSoft Shell
winget install --id=Nilesoft.Shell  -e

#instalar python
winget install -e --id Python.Python.3
