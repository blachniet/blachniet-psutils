blachniet-psutils
==========

My own humble collection of PowerShell utilites.

Place these scripts in `~\Documents\WindowsPowerShell\Modules\blachniet-psutils\`. 

Make them automatically available to your normal PowerShell environment by adding the following code to your `$profile`.
    
    Import-Module blachniet-psutils


Changelog
----------

- Removed `Kill-ProcessIfActive`. Instead, simply use `Stop-Process -Force -Name notepad` and append `-ErrorAction SilentlyContinue` if desired.