$EventLogs = Get-EventLog -List
$aplication ="Application"
$system = "System"
$path = "c:\temp\test\"
$datum = Get-Date

foreach($event in $EventLogs){
    if ($event.Log -ne $aplication -or $event.Log -ne $system ) {
        $filepath = $path+$event.log+".log"
        Get-EventLog -LogName $event.log | Out-File -FilePath $filepath
    }
    else{
        Get-EventLog -LogName $event.log -after $datum -EntryType Error| Out-File -FilePath $filepath
    }
}