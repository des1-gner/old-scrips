$var = Read-Host -Prompt "Enter File"

$exist = Test-Path $var

if ( $exist -eq $true)
{ 
	echo "File exists"    
    $var2 = Read-Host -Prompt "Enter txt to search in $var"
    Get-ChildItem -Path $var* -Filter *$var2 
    Get-ChildItem -Path $var* -Filter *$var2 >> pattern.txt
}

else 
{ 
    echo "File not found. "
}


