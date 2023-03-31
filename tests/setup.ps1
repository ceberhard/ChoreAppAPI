$pythonCmd = Get-Command python | ? { $_.Source.StartsWith("C:\Program") } | Select-Object -first 1
$pythonPath = $pythonCmd.Source
Write-Host $pythonPath

$scriptpath = split-path -parent $MyInvocation.MyCommand.Definition
$venvpath = $scriptpath + '\virtualenv'

if (test-path $venvpath) {
    remove-item $venvpath -recurse -force
}

$pythonPath = $pythonPath.Replace(' ', '` ')

$installvenv = "$pythonPath -m venv $venvpath"
Invoke-Expression $installvenv

$upgradepip = "$venvpath\Scripts\python.exe -m pip install --upgrade pip"
$upgradepip | Invoke-Expression 

$installreqs = "$venvpath\Scripts\pip.exe --no-cache-dir install --upgrade -r $scriptpath\requirements.txt"
$installreqs | Invoke-Expression 

echo ""
echo "---------------------------------------------------------------------------------"
echo "Virtual Environment installed... to activate the environment in your shell run:"
echo "---------------------------------------------------------------------------------"
echo ".\virtualenv\Scripts\Activate.ps1"
echo ""

