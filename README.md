ps-scripts
==========

My own humble collection of PowerShell scripts.

Place these scripts in `~\Documents\WindowsPowerShell\Scripts`. 

Make them available to your normal PowerShell environment by adding the following code to your `$profile`.
    
    $profileDir = Split-Path -Parent $profile
    $env:Path += ";$profileDir\Scripts";