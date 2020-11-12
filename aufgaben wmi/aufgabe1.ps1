function getDisks {
    $disks = @{}
    Get-WmiObject Win32_LogicalDisk | ForEach-Object{
        $disks.Add($_.Deviceid, ($_.FreeSpace / 1024/1024/1024) )
    }
    return $disks
}

$(getDisks)