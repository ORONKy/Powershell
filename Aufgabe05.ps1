$path = "C:\temp\test"
$worts = Read-Host "Wort suchen"
$wortr = Read-Host "Ersetzten durch"
$elements = Get-ChildItem -Path $path -Recurse -Filter "*.txt"
foreach($element in $elements){
    Set-Content $element.FullName (Get-Content $element.FullName).Replace($worts, $wortr)
}







