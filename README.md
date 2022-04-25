# posh-cd

A bash style "cd" to replace Set-Location.

## Install

Install via [Scoop](https://scoop.sh/):

```PowerShell
PS> scoop bucket add siku https://github.com/amorphobia/siku
PS> scoop install posh-cd
```

Install via [PowerShell Gallery](https://www.powershellgallery.com/packages/posh-cd)

```PowerShell
PS> Install-Module -Name posh-cd
```

Remember to import the module after installation:

```PowerShell
PS> Import-Module posh-cd
```

## Usage

Use it like the `cd` command in bash. Command `cd` without extra parameters sets to home directory and command `cd -` sets to the last directory.

## License

[AGPL-3.0](https://github.com/amorphobia/posh-cd/blob/master/LICENSE)
