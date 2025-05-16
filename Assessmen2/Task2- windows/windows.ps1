# Student Number: s4133806
# Student Name: Benz Seal

$dir = Read-Host "Enter directory path"
$type = Read-Host "Enter file extension (e.g. .ps1, .txt, .sh)"

# Search and display results
Get-ChildItem -Path $dir -Filter "*.$type" -ErrorAction SilentlyContinue |
Select-Object Name, Directory |
Format-Table -AutoSize

