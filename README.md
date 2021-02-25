## Debian Initial Setup Shell Script ##

This script sets up programs and packages that I want on every Debian 10 (Buster) workstation, installs jasmine for code testing, and sets up Git. At the end of the script the SSH key for Git generates and opens in VSCode. 

### How to Use ###

Prior to executing command add the non-free repo as per these instructions: https://wiki.debian.org/SourcesList

1. open terminal
2. cd into folder
3. important: edit the username and email address to make it your own
4. chmod +x initial-setup.sh
5. ./initial-setup.sh
6. When prompted enter the destination folder of SSH Key (Git) or hit enter for default location.
7. Enter password for Git if you wan; otherwise, hit enter. 


