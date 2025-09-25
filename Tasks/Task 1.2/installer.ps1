$OutputEncoding = [System.Text.Encoding]::UTF8

Write-Host "Установка Visual Studio Code"
winget install --accept-package-agreements --accept-source-agreements -e --id Microsoft.VisualStudioCode

# Перезагружаем переменную окружения PATH, чтобы стала доступна команда code
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 

Write-Host "Установка расширения Python для VS Code"
code --install-extension ms-python.python

Write-Host "Установка расширения C/C++ для VS Code"
code --install-extension ms-vscode.cpptools

Write-Host "Установка расширения Docker для VS Code"
code --install-extension ms-azuretools.vscode-docker

Write-Host "Установка расширения Git Graph для VS Code"
code --install-extension mhutchie.git-graph

Write-Host "Установка расширения HTML CSS Support для VS Code"
code --install-extension ecmel.vscode-html-css

Write-Host "Установка расширения Rust Analyzer для VS Code"
code --install-extension rust-lang.rust-analyzer

Write-Host "Установка Chocolatey"
winget install -e --id Chocolatey.Chocolatey

# Перезагружаем переменную окружения PATH, чтобы стала доступна команда choco
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

Write-Host "Установка Docker"
winget install --accept-package-agreements --accept-source-agreements -e --id Docker.DockerDesktop

Write-Host "Установка PyCharm Community Edition"
winget install --accept-package-agreements --accept-source-agreements -e --id JetBrains.PyCharm.Community

Write-Host "Установка Maxima"
winget install --accept-package-agreements --accept-source-agreements -e --id MaximaTeam.Maxima

Write-Host "Установка KNIME Analytics Platform"
winget install --accept-package-agreements --accept-source-agreements -e --id KNIMEAG.KNIMEAnalyticsPlatform

Write-Host "Установка GIMP"
winget install --accept-package-agreements --accept-source-agreements -e --id GIMP.GIMP.3

Write-Host "Установка языка Julia"
winget install --accept-package-agreements --accept-source-agreements -e --id Julialang.Julia

Write-Host "Установка языка Python"
choco install -y python3

Write-Host "Установка языка Rust"
choco install -y rustup.install

Write-Host "Установка MSYS2"
winget install --accept-package-agreements --accept-source-agreements -e --id MSYS2.MSYS2

Write-Host "Установка MiKTeX"
winget install --accept-package-agreements --accept-source-agreements -e --id MiKTeX.MiKTeX

Write-Host "Установка TeXstudio"
winget install --accept-package-agreements --accept-source-agreements -e --id TeXstudio.TeXstudio

Write-Host "Установка Anaconda"
winget install --accept-package-agreements --accept-source-agreements -e --id Anaconda.Anaconda3

Write-Host "Установка Far Manager"
winget install --accept-package-agreements --accept-source-agreements -e --id FarManager.FarManager

Write-Host "Установка SumatraPDF"
winget install --accept-package-agreements --accept-source-agreements -e --id SumatraPDF.SumatraPDF

Write-Host "Установка Google Chrome"
winget install --accept-package-agreements --accept-source-agreements -e --id Google.Chrome

Write-Host "Установка Flameshot.Flameshot"
winget install --accept-package-agreements --accept-source-agreements -e --id Flameshot.Flameshot

Write-Host "Установка WSL"
winget install --accept-package-agreements --accept-source-agreements -e --id Microsoft.WSL

Write-Host "Установка Qalculate"
winget install --accept-package-agreements --accept-source-agreements -e --id Qalculate.Qalculate

Write-Host "Установка 7zip"
winget install --accept-package-agreements --accept-source-agreements -e --id 7zip.7zip

Write-Host "Установка Firefox"
winget install --accept-package-agreements --accept-source-agreements -e --id Mozilla.Firefox

Write-Host "Установка Yandex Browser"
winget install --accept-package-agreements --accept-source-agreements -e --id Yandex.Browser

Write-Host "Установка Microsoft Edge"
winget install --accept-package-agreements --accept-source-agreements -e --id Microsoft.Edge

Write-Host "Установка Archi"
winget install --accept-package-agreements --accept-source-agreements -e --id Archi.Archi

Write-Host "Установка Arc"
winget install --accept-package-agreements --accept-source-agreements -e --id TheBrowserCompany.Arc

#-------------------------------------------------------------------------------------------------------------------------

$downloadsPath = (New-Object -ComObject Shell.Application).Namespace('shell:Downloads').Self.Path

Write-Host "Скачивание SberJazz..."
$outPath = "$downloadsPath\SberJazz.exe"
$ProgressPreference = 'SilentlyContinue' # Отключаем показ прогресса, который В НЕСКОЛЬКО РАЗ замедляет скорость скачивания
Invoke-WebRequest "http://dl.salutejazz.ru/desktop/latest/jazz.exe" -OutFile $outPath

Write-Host "Установка SberJazz..."
& $outPath /S

#-------------------------------------------------------------------------------------------------------------------------

Write-Host "Скачивание Yandex Telemost..."
$outPath = "$downloadsPath\YandexTelemost.exe"
$ProgressPreference = 'SilentlyContinue' # Отключаем показ прогресса, который В НЕСКОЛЬКО РАЗ замедляет скорость скачивания
$userAgent = [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome # Нужно замаскировать запрос, как будто бы он идёт из настоящего браузера, чтобы яндекс не заставлял вводить капчу
Invoke-WebRequest "https://telemost.yandex.ru/download-desktop" -OutFile $outPath -UserAgent $userAgent
Write-Host "Установка Yandex Telemost..."
& $outPath /verysilent
