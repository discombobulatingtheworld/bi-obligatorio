$pythonInstalled = Get-Command python -ErrorAction SilentlyContinue
if (-not $pythonInstalled) {
    Write-Host "Python is not installed. Please install Python and try again."
    exit
}

$dockerInstalled = Get-Command docker -ErrorAction SilentlyContinue
if (-not $dockerInstalled) {
    Write-Host "Docker is not installed. Please install Docker and try again."
    exit
}

if((docker ps 2>&1) -match '^(?!error)'){
    Write-Host "Docker is running"
} else {
    Write-Host "Docker is not running. Please start Docker and try again."
    exit
}

if (-not (Test-Path .\.env)) {
    Write-Host "Environment file is missing. Please create .env file and try again."
    exit
}

$folderPath = ".\.venv"
if (-not (Test-Path $folderPath)) {
    python -m venv $folderPath
}

& $folderPath\Scripts\Activate.ps1
pip install -r .\requirements.txt

docker compose up -d