# Folder Structure Script

A script to automatically create a hierarchical folder structure for expense tracking. Implemented in both PowerShell and Python.

## Features

- Creates year folders (2024-2026)
- Creates monthly subfolders with format YYYY_MM (e.g., 2024_01)
- Includes error checking to prevent duplicate folders
- Displays progress during creation
- Shows complete folder structure after completion

## Implementations

### PowerShell Version (`create_folders.ps1`)
- Native Windows solution
- No additional dependencies required
- Windows-specific path handling
- Built-in security features

Usage:
```powershell
.\create_folders.ps1
```

### Python Version (`create_folders.py`)
- Cross-platform compatible
- Uses modern pathlib library
- Clean, readable syntax
- Easy to extend

Usage:
```bash
python create_folders.py
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

For PowerShell version:
- Windows PowerShell 5.1 or later
- Administrator privileges (when creating folders in system directories)

For Python version:
- Python 3.6 or later
- No additional packages required

## Which Version Should I Use?

- Use the **PowerShell** version if:
  - You're working exclusively in Windows
  - You need native Windows integration
  - You don't want to install additional software

- Use the **Python** version if:
  - You need cross-platform compatibility
  - You plan to extend the functionality
  - You prefer Python's syntax
  - You already have Python installed

## License

MIT License

## Author

jcherranz
