$log = Get-EventLog -List 
foreach($logs in $log){
    $logs.category
}