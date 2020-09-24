$path = "c:/Windows"
$filter = "*.exe"

$input = Get-ChildItem $path $filter

foreach ($item in $input) {
    Write-Host $item.Name `t $item.Length `t $item.VersionInfo.ProductVersion
}
