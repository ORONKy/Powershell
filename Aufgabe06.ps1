$csv = Import-Csv -Path "C:\temp\Schueler.csv" -Header "Benutzername", "Name","Vorname","Klasse", "Klasse2"


foreach ($schueller in $csv) {
        $klasse = $schueller.Klasse
        Write-Host $klasse

}
        #$f = "c:\temp\test\"+$schueller.klasse+".csv"
        #Write-host $schueller.Name
        #$schueller | Out-File $f -Append 