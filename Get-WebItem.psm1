<#
The MIT License (MIT)

Copyright (c) 2013 Brian Lachniet

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#>

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