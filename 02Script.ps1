$input =""
while ($input -ne "exit") {
    
$ort = @{}
$csv = get-content -Path "C:\temp\ort.csv"
foreach($row in $csv){
    $name =$row.split( ";")[1]
    
    if ($ort.ContainsKey($name)) {
        $ort[$name] += $row.split( ";")[0]+":"+$row.split( ";")[2]
    }else {
        $ort[$name] = $row.Split(";")[0] + ":" + $row.Split(";")[2];
    }
}
Write-Host "ort:"
$input = Read-Host
if ($input -eq "exit") {
    Exit
}
$ort.Get_Item($input)
}

