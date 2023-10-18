<#
This script is specifically copying the most recently save genotyping 
spreadsheet sent from Alex. It is intended to be able to run from any
location.
#>

# Get the most recentley saved genotyping file
$file = Get-ChildItem -Path 'C:\Users\woods\OneDrive\Laboratorio\Gestión del ratón\Genotipificación\2023' |
    Sort-Object LastWriteTime -Descending |
    Select-Object -First 1

# Get the full file name (including its path)
$filePath = $file.FullName

# Copy the complete Path to clipboard
$filePath | Set-Clipboard