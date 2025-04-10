#Get-ExecutionPolicy -List
#Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
$cred = Get-Credential -Credential "192.168.2.20\Dale"
New-PSDrive -Name "NAS" -PSProvider "FileSystem" -Root "\\192.168.2.20\home" -Credential $cred
#Get-PSDrive -Name "NAS"
#Get-ChildItem -Path 'NAS:\Personal Vault'
###Copy-Item -Path "C:\Users\ddhan\OneDrive\Personal Vault\*" -Destination "NAS:\Personal Vault" -Recurse -Force
#Get-ChildItem -Path 'NAS:\Personal Vault'
###Remove-PSDrive -Name "NAS"
###Read-Host -Prompt "Files Copied to NAS... Press Enter to continue"
#Start-Sleep -s 15

#.\Sync-Folder.ps1 -SourceFolder d:\synctest\source1 -TargetFolder d:\synctest\dest1
#.\Sync-Folder.ps1 -SourceFolder "C:\Users\ddhan\OneDrive\Personal Vault" -TargetFolder "D:\temp"
#.\Sync-Folder.ps1 -SourceFolder "C:\Users\ddhan\OneDrive\Personal Vault" -TargetFolder "NAS:\Personal Vault"
#$PWD.Path
& 'C:\Users\ddhan\OneDrive\Documents\PS Script\Sync-Folder.ps1' -SourceFolder "C:\Users\ddhan\OneDrive\Personal Vault" -TargetFolder "NAS:\Personal Vault"
Remove-PSDrive -Name "NAS"
Read-Host -Prompt "Files Copied to NAS... Press Enter to continue"
