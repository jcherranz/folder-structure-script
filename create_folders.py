import os
from pathlib import Path

# Define the base path
base_path = r"C:\Users\JuanCarlosHerranzRam\Ithaka Investments Europe\Datos - 8.- Otras\5. Internal\GASTOS\JCH"

# Create base directory if it doesn't exist
Path(base_path).mkdir(parents=True, exist_ok=True)

# Create folders for years 2024-2026
for year in range(2024, 2027):
    # Create year folder
    year_path = Path(base_path) / str(year)
    year_path.mkdir(exist_ok=True)
    print(f"Created folder: {year_path}")
    
    # Create month folders
    for month in range(1, 13):
        # Create month folder with format YYYY_MM
        month_folder = f"{year}_{month:02d}"
        month_path = year_path / month_folder
        month_path.mkdir(exist_ok=True)
        print(f"Created folder: {month_path}")

print("\nFolder structure creation completed!")

# Display the created structure
print("\nCreated folder structure:")
for path in Path(base_path).rglob("*"):
    if path.is_dir():
        print(path)
