#!/bin/bash
##################### ZIP*Data II #####################

#################### Set Variables ####################

# License string
license="your_license"

# Release version
release_version="latest"  

# Target directory - where you want to download files to; The default is current directory.   
target_directory=$PWD

# Program directory - where you put MelissaUpdater.exe; The default is current directory.
# Melissa Updater source code: https://github.com/MelissaData/MelissaUpdater
# Melissa Updater binary download link: https://releases.melissadata.net/Download/Library/LINUX/NET/ANY/latest/MelissaUpdater
program_directory="$target_directory/MelissaUpdater"
program_path="$program_directory/MelissaUpdater"


##################### Functions #######################
 
Get-File() 
{
    path="$target_directory/$6" 
    
    verifyPath="$target_directory/$6/$1"
    $program_path verify --path $verifyPath
    
    if [ $? -eq 0 ];
    then
        eval "$program_path file --filename $1 --release_version $release_version --license $license --type $2 --os $3 --compiler $4 --architecture $5 --target_directory $path "
    else
        eval "$program_path file --force --filename $1 --release_version $release_version --license $license --type $2 --os $3 --compiler $4 --architecture $5 --target_directory $path "
    fi
}

Get-Manifest() 
{
    path="$target_directory/$2"

    eval "$program_path manifest --product $1 --release_version $release_version --license $license --target_directory $path "
}

######################## Main #########################

###################
# Section 1: Data #
###################

# ZIP*Data II
target_path="Data"
Get-File "ZipCnty.csv" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "ZipData2.csv" "DATA" "ANY" "ANY" "ANY" $target_path

# Legacy
target_path="Data/legacy"
Get-File "ABB.DAT" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "ABB.DBF" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "CBSA.DAT" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "CBSA.DBF" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "CENSUS.DAT" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "CENSUS.DBF" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "CNTY.DAT" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "CNTY.DBF" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "DST.DAT" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "DST.DBF" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "MSA.DAT" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "MSA.DBF" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "UNQ.DAT" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "UNQ.DBF" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "ZIP.DAT" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "ZIP.DBF" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "ZIPCBSA.DAT" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "ZIPCBSA.DBF" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "ZIPCNTY.DAT" "DATA" "ANY" "ANY" "ANY" $target_path

Get-File "ZIPCNTY.DBF" "DATA" "ANY" "ANY" "ANY" $target_path