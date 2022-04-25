function Set-Directory {
    param([string] $Path)

    if ([string]::IsNullOrEmpty($Path)) {
        $TargetPath = '~'
    } elseif ($Path -eq '-') {
        $TargetPath = $env:OLDPWD
    } else {
        $TargetPath = $Path
    }

    if ([string]::IsNullOrEmpty($TargetPath)) {
        Write-Error -Message '$env:OLDPWD not set' -ErrorAction Stop
    } else {
        $OLDPWD = $(Get-Location).Path
        Set-Location $TargetPath -ErrorAction Stop
        $env:OLDPWD = $OLDPWD
    }
    if ($Path -eq '-') {
        Write-Output $TargetPath
    }
}

while (Test-Path Alias:\cd) {
    Remove-Item Alias:\cd
}

Set-Alias -Name cd -Value Set-Directory
Export-ModuleMember -Alias cd -Function Set-Directory
