function getAllAcounts {
    $return = @()
    Get-WmiObject Win32_UserAccount | ForEach-Object{
        $return += $_.Name
    }
    return $return
}

$(getAllAcounts)

