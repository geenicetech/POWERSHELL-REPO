$location = 'east us'
$resourcegroup = 'RG1','RG2','RG3'

foreach ($rgname in $resourcegroup)
{
New-AzResourceGroup -name $rgname -location $location -Tag @{department = 'sales' ; office = 'abuja'}
}


#Delete resource groups
foreach ($rgname in $resourcegroup)
{Remove-AzResourceGroup -Name $rgname -Force}


