# tar7Z-autoscript
Automated generation of .tar.7z archive.

## Prerequisites
The script itself SH compatible and both Tar and Date should be already installed by default on any UNIX-like ditribution.
Make sure to have 7z installed:

`sudo apt-get update && apt-get upgrade && apt-get install p7zip`

or

`sudo pacman -Syu && pacman -S p7zip`

## Usage
Call the script from command line with the file you want to archive as arguments:

`./tar7z file1 file2`

The return value of each step is checked to ensure a clean archive.
If no error occurs, you will be prompted for an optional new name for the archive.
If no name are provided, the default one will be kept.
By default, the name is the current ISO date (yyyy-mm-ddThh:mm+xx:00).

You now have a standard .tar.7z archive. Fell free to modify the code to suit your needs.
