$scriptpath = split-path -parent $MyInvocation.MyCommand.Definition
$venvpath = $scriptpath + '\virtualenv'

try {
    deactivate
}
catch { }

if (test-path $venvpath) {
    remove-item $venvpath -recurse -force
}
