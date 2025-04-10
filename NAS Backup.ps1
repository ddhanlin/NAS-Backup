$cred = Get-Credential -Credential "192.168.2.20\Dale"
New-PSDrive -Name "NAS" -PSProvider "FileSystem" -Root "\\192.168.2.20\home" -Credential $cred

& 'C:\Users\ddhan\OneDrive\Documents\PS Script\Sync-Folder.ps1' -SourceFolder "C:\Users\ddhan\OneDrive\Personal Vault" -TargetFolder "NAS:\Personal Vault"
Remove-PSDrive -Name "NAS"
Read-Host -Prompt "Files Copied to NAS... Press Enter to continue"
