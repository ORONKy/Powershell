function getFreeMemory {
    $memory = Get-WmiObject Win32_OperatingSystem | Select-Object FreePhysicalMemory
    return $memory.FreePhysicalMemory/1024 / 1024
}

$(getFreeMemory)