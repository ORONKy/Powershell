$proceses = Get-Process | Sort-Object -Property Cpu -Descending 
$procesHash = @{}
$path = "c:\temp\test\processe.csv"

foreach($proces in $proceses){
    if($procesHash.ContainsKey($proces.Name)) {
        $procesHash[$proces.Name] = $procesHash[$proces.Name] + $proces.cpu
    }
    else{
        $procesHash.Add($proces.Name, $proces.Cpu)
    }
}
$procesHash.GetEnumerator() | select-object "key", "value" | Export-Csv -Delimiter ";" -Path $path 