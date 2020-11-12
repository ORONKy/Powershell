function getRam {
    $ram = Get-WmiObject Win32_PhysicalMemory | select-object capacity
    return ($ram.capacity/1024/1024/1024)
}

$(getRam)