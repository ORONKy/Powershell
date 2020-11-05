Param(
    [Parameter(Mandatory=$true)][String] $verzeichnisse1,
    [Parameter(Mandatory=$true)][String] $verzeichnisse2
)
$path = "c:\temp\test"

$verzeichnisse1Array = $verzeichnisse1.Split(",")
$verzeichnisse2Array = $verzeichnisse2.Split(",")

foreach($v in $verzeichnisse1Array){
    New-Item -Path $path -Name $v -ItemType "Directory"
    foreach($v2 in $verzeichnisse2Array){
        New-Item -Path $path"\"$v -Name $v2 -ItemType "Directory"
    }
}