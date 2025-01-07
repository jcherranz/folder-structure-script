# Enable strict mode for better error handling
Set-StrictMode -Version Latest

# Define the base path where folders will be created
$basePath = "C:\Users\JuanCarlosHerranzRam\Ithaka Investments Europe\Datos - 8.- Otras\5. Internal\GASTOS\JCH"

# Create the base directory if it doesn't exist
if (-not (Test-Path -Path $basePath)) {
    New-Item -Path $basePath -ItemType Directory
}

# Years to create folders for
$years = 2024..2026

# Create folders for each year
foreach ($year in $years) {
    Try {
        # Create year folder
        $yearPath = Join-Path -Path $basePath -ChildPath $year.ToString()
        if (-not (Test-Path -Path $yearPath)) {
            New-Item -Path $yearPath -ItemType Directory
            Write-Verbose "Created folder: $yearPath"
        }

        # Create month folders
        for ($month = 1; $month -le 12; $month++) {
            # Format month number with leading zero
            $monthStr = $month.ToString("00")

            # Create month folder with format YYYY_MM
            $monthPath = Join-Path -Path $yearPath -ChildPath ("{0}_{1}" -f $year, $monthStr)
            if (-not (Test-Path -Path $monthPath)) {
                New-Item -Path $monthPath -ItemType Directory
                Write-Verbose "Created folder: $monthPath"
            }
        }
    }
    Catch {
        Write-Error "Failed to create folder for year $year: $_"
    }
}

Write-Host "`nFolder structure creation completed!"

# Display the created structure
Write-Host "`nCreated folder structure:"
Get-ChildItem -Path $basePath -Recurse -Directory | Select-Object FullName
