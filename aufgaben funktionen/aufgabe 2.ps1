function DayInHashTable {
    $date = Get-Date
    $dayTable = @{}
    $dayTable.Add("d", $date.Day)
    $dayTable.Add("m", $date.Month)
    $dayTable.Add("y", $date.Year)
    return $dayTable
}