
function InstallModules{
    param([String[]]$names)
    $DebugPreference = 'Continue'
    $getAzModules = (Get-Module).Name
    foreach ($module in $names){
        if ($module -notin $getAzModules){
            Write-Host "Installing and importing $module module" -ForegroundColor Yellow
            Install-Module $module -AllowClobber -Repository PSGallery -Force
            Import-Module $module -ErrorAction SilentlyContinue
        }
        else{
            Write-Host "The $module module is already installed" -ForegroundColor Green
        }
    }
}
InstallModules -names "Az"



New-AzResourceGroup -Name "testing-resource-group-123" -Tag @{Empty=$null;Department="change"} -Location "eastus"
#creating resource group to hold other resources in a single location
