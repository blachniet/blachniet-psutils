<#
.SYNOPSIS
Downloads a file from some web uri to a local path.
.DESCRIPTION
Downloads a file from some web uri to a local path.
.EXAMPLE
Get-WebItem http://www.google.com/favicon.ico ~\Desktop\favicon.ico
.NOTES
.LINK
http://blachniet.com
#>
Function Get-WebItem
{

    [CmdletBinding()]
    Param(
    
        [Parameter(
            Mandatory=$True, 
            Position=0)]
        [string] $Source,
        
        [Parameter(
            Mandatory=$True, 
            Position=1)]
        [string] $Destination
    )
    
    Try
    {
        $wc = New-Object System.Net.WebClient
        Write-Host "Downloading $Source, saving to $Destination..."
        $wc.DownloadFile($Source, $Destination)
        Write-Host "Download complete."
    }
    Catch
    {
        [System.Exception]
        Write-Host "An error occured while trying to download $Source."
    }
}

Export-ModuleMember Get-WebItem