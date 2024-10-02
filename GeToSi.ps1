
#- - - - LOGIC- - - - 

#Get all folders
$folders = get-Childitem . -Directory

foreach ($dire in $folders)
{
    # Get-DirecTotal -direPath $dire.FullName
    $pathName = $dire.FullName
    $allFile = Get-Childitem -Path $dire.FullName -Recurse -File | measure Length -Sum
    $theSize = $allFile.Sum/1mb
    Write-Host "The folder"$dire.Name" contains "$theSize.ToString("F2")" mb"


}

####
#get file not in folder
$notInDiFi = Get-Childitem . -File | measure Length -Sum
$curSize = $notInDiFi.Sum/1mb
Write-Host "files not in any directory is "$curSize.ToString("F2")" mb"





####
# #get the total of all files

$measure = ls -Recurse -File | measure Length -Sum
$total = $measure.Sum/1mb
write-Host "this folder contains a total of "$total.ToString("F2")" mb"



