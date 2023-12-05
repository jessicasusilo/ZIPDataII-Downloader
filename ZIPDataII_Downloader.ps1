##################### ZIP*Data II #####################

#################### Set Variables ####################

# License string
$license            = "your_license"

# Release version
$release_version    = "latest"  

# Target directory - where you want to download files to; The default is current directory.
$target_directory   = Get-Location

# Program directory - where you put MelissaUpdater.exe; The default is current directory.
# Melissa Updater source code: https://github.com/MelissaData/MelissaUpdater
# Melissa Updater binary download link: https://releases.melissadata.net/Download/Library/WINDOWS/NET/ANY/latest/MelissaUpdater.exe
$program_directory  = "$target_directory\MelissaUpdater" 
$program_path       = "$program_directory\MelissaUpdater.exe" 



##################### Functions #######################
 
function Get-File {
    param (
      [parameter(Mandatory=$true)][String]$Filename,
      [parameter(Mandatory=$false)][String]$Type,
      [parameter(Mandatory=$true)][String]$OperatingSystem,
      [parameter(Mandatory=$true)][String]$Compiler,
      [parameter(Mandatory=$true)][String]$Architecture,
      [parameter(Mandatory=$true)][String]$TargetDirectory,
      [parameter(Mandatory=$false)][String]$WorkingDirectory
    )
       
    $path = "$target_directory\$TargetDirectory" 
    
    $verifyPath = "$target_directory\$TargetDirectory\$Filename"
    $params = "verify", "-p", "$verifyPath"
    & $program_path $params
    
    if($? -eq $False) {
      Invoke-Expression "$program_path file -f -n `"$Filename`" -r `"$release_version`" -l `"$license`" -y `"$Type`" -o `"$OperatingSystem`" -c `"$Compiler`" -a `"$Architecture`" -t `"$path`" " 
    } else {
      Invoke-Expression "$program_path file -n `"$Filename`" -r `"$release_version`" -l `"$license`" -y `"$Type`" -o `"$OperatingSystem`" -c `"$Compiler`" -a `"$Architecture`" -t `"$path`" " 
    }
}

function Get-Manifest {
    param (
      [parameter(Mandatory=$true)][String]$ProductName,
      [parameter(Mandatory=$true)][String]$TargetDirectory,
      [parameter(Mandatory=$false)][String]$WorkingDirectory
    )
       
    $path = "$target_directory\$TargetDirectory" 

    Invoke-Expression "$program_path manifest -p `"$ProductName`" -r `"$release_version`" -l `"$license`" -t `"$path`" " 
}

######################## Main #########################

###################
# Section 1: Data #
###################

# ZIP*Data II
$target_path = "Data"
Get-File -Filename "ZipCnty.csv" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "ZipData2.csv" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

# Legacy
$target_path = "Data\legacy"
Get-File -Filename "ABB.DAT" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "ABB.DBF" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "CBSA.DAT" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "CBSA.DBF" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "CENSUS.DAT" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "CENSUS.DBF" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "CNTY.DAT" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "CNTY.DBF" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "DST.DAT" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "DST.DBF" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "MSA.DAT" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "MSA.DBF" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "UNQ.DAT" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "UNQ.DBF" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "ZIP.DAT" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "ZIP.DBF" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "ZIPCBSA.DAT" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "ZIPCBSA.DBF" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "ZIPCNTY.DAT" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path

Get-File -Filename "ZIPCNTY.DBF" -Type "DATA" -OperatingSystem "ANY" -Compiler "ANY" -Architecture "ANY" -TargetDirectory $target_path