$OutputEncoding = [System.Text.Encoding]::UTF8

Write-Host "Установка Visual Studio Code"
winget install -e --id Microsoft.VisualStudioCode

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

Write-Host "Установка Chocolatey"
winget install -e --id Chocolatey.Chocolatey

# Перезагружаем переменную окружения PATH, чтобы стала доступна команда choco
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

Write-Host "Установка Docker"
winget install -e --id Docker.DockerDesktop

Write-Host "Установка PyCharm Community Edition"
winget install -e --id JetBrains.PyCharm.Community

Write-Host "Установка Maxima"
winget install -e --id MaximaTeam.Maxima

Write-Host "Установка KNIME Analytics Platform"
winget install -e --id KNIMEAG.KNIMEAnalyticsPlatform

Write-Host "Установка GIMP"
winget install -e --id GIMP.GIMP.3

Write-Host "Установка языка Julia"
winget install -e --id Julialang.Julia

Write-Host "Установка языка Python"
choco install python3

Write-Host "Установка языка Rust"
choco install rustup.install

Write-Host "Установка MSYS2"
winget install -e --id MSYS2.MSYS2

Write-Host "Установка MiKTeX"
winget install -e --id MiKTeX.MiKTeX

Write-Host "Установка TeXstudio"
winget install -e --id TeXstudio.TeXstudio

Write-Host "Установка Anaconda"
winget install -e --id Anaconda.Anaconda3

Write-Host "Установка Far Manager"
winget install -e --id FarManager.FarManager

Write-Host "Установка SumatraPDF"
winget install -e --id SumatraPDF.SumatraPDF

Write-Host "Установка Google Chrome"
winget install -e --id Google.Chrome

Write-Host "Установка Flameshot.Flameshot"
winget install -e --id Flameshot.Flameshot

Write-Host "Установка WSL"
winget install -e --id Microsoft.WSL

Write-Host "Установка Qalculate"
winget install -e --id Qalculate.Qalculate

Write-Host "Установка 7zip"
winget install -e --id 7zip.7zip

Write-Host "Установка Firefox"
winget install -e --id Mozilla.Firefox

Write-Host "Установка Yandex Browser"
winget install -e --id Yandex.Browser

Write-Host "Установка Microsoft Edge"
winget install -e --id Microsoft.Edge
