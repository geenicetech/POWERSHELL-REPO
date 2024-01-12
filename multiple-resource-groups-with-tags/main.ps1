$location = 'east us'
$resourcegroup = 'RG1','RG2','RG3'

foreach ($rg in $resourcegroup)
{
New-AzResourceGroup -name $rg -location $location -Tag @{department = 'sales' ; office = 'abuja'}
}


#Delete resource groups
foreach ($rg in $resourcegroup)
{Remove-AzResourceGroup -Name $rg -Force}


