$cputime = Get-Process
$red = @()
$white = @()
$green = @()

foreach ($item in $cputime) {
    if ($item.cpu -lt 300) { 
        $green+= $item
    }if ($item.cpu -ge 300 -and $item.cpu -le 1000) {
        $white+= $item
    }else {
        $red+= $item
    }
}
foreach ($item in $red) {
    Write-Host -ForegroundColor Red $item
}

foreach ($item in $white) {
    Write-Host $item
}

foreach ($item in $green) {
    Write-Host -ForegroundColor Green $item
}
Write-Host "Rot: "$red.count" White: "$white.count" Green: "$green.count