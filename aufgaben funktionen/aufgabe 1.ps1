function CelsiusFahrenheit($celsius) {
    return $celsius * 9 / 5 + 32
}

Write-Host $(CelsiusFahrenheit -celsius 14)