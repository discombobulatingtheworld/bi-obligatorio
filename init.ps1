Write-Host "Checking prerequisites..."

Write-Host "Checking Python... " -NoNewline
$pythonInstalled = Get-Command python -ErrorAction SilentlyContinue
if (-not $pythonInstalled) {
    Write-Host "Python is not installed. Please install Python and try again."
    exit
}
Write-Host "Python is installed"

Write-Host "Checking Docker... " -NoNewline
$dockerInstalled = Get-Command docker -ErrorAction SilentlyContinue
if (-not $dockerInstalled) {
    Write-Host "Docker is not installed. Please install Docker and try again."
    exit
}
Write-Host "Docker is installed"

Write-Host "Checking Docker is running... " -NoNewline
if((docker ps 2>&1) -match '^(?!error)'){
    Write-Host "Docker is running"
} else {
    Write-Host "Docker is not running. Please start Docker and try again."
    exit
}

Write-Host "Checking .env file... " -NoNewline
if (-not (Test-Path .\.env)) {
    Write-Host "Environment file is missing. Please create .env file and try again."
    exit
}
Write-Host ".env file is present"


$folderPath = ".\.venv"
if (-not (Test-Path $folderPath)) {
    Write-Host "Creating virtual environment... " -NoNewline
    python -m venv $folderPath
    Write-Host "Virtual environment created"
}

Write-Host "Activating virtual environment... " -NoNewline
& $folderPath\Scripts\Activate.ps1
Write-Host "Virtual environment activated"

Write-Host "Installing Python packages... " -NoNewline
pip install -r .\requirements.txt > $null
if ($LASTEXITCODE -eq 0) {
    Write-Host "Python packages installed"
} else {
    Write-Host "Failed to install Python packages"
    exit
}

Write-Host "Starting Docker containers... " -NoNewline
docker compose up -d > $null
if ($LASTEXITCODE -eq 0) {
    Write-Host "Docker containers started"
} else {
    Write-Host "Failed to start Docker containers"
    exit
}

Write-Host "Waiting for database to start..."
Start-Sleep -Seconds 30

Write-Host "Checking database schema... " -NoNewline
python .\datawarehouse\enforcedbschema.py > $null
if ($LASTEXITCODE -eq 0) {
    Write-Host "Database schema is up to date"
} else {
    Write-Host "Failed to update database schema"
    exit
}

pause