function jahrDeutsch {
    $Monate = @("januar", "Febuar", "März", "April", "Mai", "Juni", "Juli", "Augus", "September", "Oktober", "November", "Dezember")

    return $Monate.Get([int] (get-Date).Month-1)
}

function tagDeutsch {
    $Tage = @("Montag", "Dienstag", "Mitwoch", "Donnerstag", "Freitag", "Samstag", "Sontag")
    
    return $Tage.Get([int] (get-Date).DayOfWeek-1)
}

Write-Host $(jahrDeutsch)
Write-Host $(tagDeutsch)
