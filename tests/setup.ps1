$scriptpath = split-path -parent $MyInvocation.MyCommand.Definition
$venvpath = $scriptpath + '\virtualenv'

if (test-path $venvpath) {
    remove-item $venvpath -recurse -force
}

C:\Python39\python -m venv $venvpath

$upgradepip = $venvpath + '\Scripts\pip.exe install --upgrade pip'
$upgradepip | Invoke-Expression 

$installreqs = $venvpath + '\Scripts\pip.exe --no-cache-dir install --upgrade -r .\requirements.txt'
$installreqs | Invoke-Expression 

echo ""
echo "---------------------------------------------------------------------------------"
echo "Virtual Environment installed... to activate the environment in your shell run:"
echo "---------------------------------------------------------------------------------"
echo ".\virtualenv\Scripts\Activate.ps1"
echo ""

