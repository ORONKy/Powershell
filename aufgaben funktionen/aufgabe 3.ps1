function proces($GridView) {
    if ($GridView) {
        return Get-Process | Select-Object id,ProcessName, Path | Where-Object {$_.MainWindowTitle -ne ''} | Out-GridView
    }
    return Get-Process | Select-Object id,ProcessName, Path | Where-Object {$_.MainWindowTitle -ne ""} 
}

$(proces -GridView "True")