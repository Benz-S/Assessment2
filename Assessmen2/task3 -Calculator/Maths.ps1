# Student Number: S4133806
# Student Name: Benz Seal

[int]$num1 = Read-Host "Enter first number"
[int]$num2 = Read-Host "Enter second number"

while ($true) {
    Write-Host "`n1. Calculate"
    Write-Host "2. Exit"
    $menu = Read-Host "Choose option"

    if ($menu -eq 1) {
        Write-Host "Add: $($num1 + $num2)"
        Write-Host "Subtract: $($num1 - $num2)"
        Write-Host "Multiply: $($num1 * $num2)"
        if ($num2 -ne 0) {
            Write-Host "Divide: $($num1 / $num2)"
        } else {
            Write-Host "Divide: Cannot divide by zero"
        }
    }
    elseif ($menu -eq 2) {
        break
    }
    else {
        Write-Host "Invalid input"
    }
}

