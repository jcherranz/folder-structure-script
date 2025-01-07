# Folder Structure Script

A PowerShell script to automatically create a hierarchical folder structure for expense tracking.

## Features

- Creates year folders (2024-2026)
- Creates monthly subfolders with format YYYY_MM
- Includes error checking to prevent duplicate folders
- Displays progress during creation
- Shows complete folder structure after completion

## Usage

1. Clone this repository
2. Open PowerShell with administrator privileges
3. Navigate to the script location
4. Run the script:
```powershell
.\create_folders.ps1
```

## Folder Structure Created

```
Base Path
├── 2024
│   ├── 2024_01
│   ├── 2024_02
│   └── ...
├── 2025
│   ├── 2025_01
│   ├── 2025_02
│   └── ...
└── 2026
    ├── 2026_01
    ├── 2026_02
    └── ...
```

## Requirements

- Windows PowerShell 5.1 or later
- Administrator privileges (when creating folders in system directories)

## License

MIT License

## Author

jcherranz
