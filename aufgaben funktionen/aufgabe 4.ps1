function jahrDeutsch {
    $Monate = @("januar", "Febuar", "März", "April", "Mai", "Juni", "Juli", "Augus", "September", "Oktober", "November", "Dezember")

    return $Monate.Get([int] (get-Date).Month)
}

function tagDeutsch {
    $Tage = @("Montag", "Dienstag", "Mitwoch", "Donnerstag", "Freitag", "Samstag", "Sontag")
    
    return $Tage.Get([int] (get-Date).DayOfWeek)
}

Write-Host $(jahrDeutsch)
Write-Host $(tagDeutsch)
