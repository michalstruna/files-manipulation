#for i in {1..100}; do echo "Toto je soubor $i" > "$i.txt"; done;

[CmdletBinding()]

param(
    [String]
    $Dir=".",

    [String]
    $Mask="*",

    [Parameter(Mandatory, ParameterSetName="add")]
    [String]
    $Add,

    [Parameter(Mandatory, ParameterSetName="set")]
    [String]
    $Set
)

$path = (Join-Path -Path $Dir -ChildPath $Mask)

Write-Verbose "Cesta: $path"
Write-Verbose "Celkem $((Get-ChildItem $path | Measure-Object).count) souborů"
Get-ChildItem $path | Write-Verbose 

if ($PSCmdlet.ParameterSetName -eq "set") {
    Set-Content -Path $path -Value $Set
} else {
    Add-Content -Path $path -Value $Add
}
