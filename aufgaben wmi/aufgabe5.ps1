function getFreigaben {

    return Get-WmiObject Win32_Share | select-object Name, Path
}

$(getFreigaben)