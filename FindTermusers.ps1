$folderLocation="E:\Private\"
$folderNames=(get-childitem $folderLocation | select Name)
$folderLeafs=@("Terminal","Terminal.V2")

foreach($name in $folderNames){
	$user=$name.Name
	foreach($leaf in $folderLeafs){
		$folderRoot="$folderLocation\$user"
		$folder="$folderRoot\$leaf"
		$pathTest=test-path $folder
		if($pathTest -eq $True){
			$userWithTermProfile+="`r`n $user"
        }
	}
}

$userWithTermProfile