# File Sorter by Extension

This Bash script organizes **regular files** in a specified directory into subdirectories based on their extensions.

## Features

- Automatically creates subdirectories for each file extension.
- Moves files into their respective subdirectories based on extensions.
- Handles files without extensions by placing them into a `no_extension` directory.

## Requirements

- A Unix-like operating system with Bash.
- Write permissions for the target directory.

## Usage

1. Clone this repository or download the script file directly.
2. Make the script executable:
   ```bash
   chmod +x file_sorter.sh
3. Run the script with the target directory as an argument:
    ```bash
    ./file_sorter.sh /path/to/target/directory

## Notes

- The script uses `shopt -s dotglob` to include hidden files.
- Existing files in the destination directories are not overwritten (`mv -n`).