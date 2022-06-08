##Dpeloy ARM template using powershell

#login to azure
Login-AzAccount

#vars
$subscriptionId="<CHANGE_ME>"
$resourceGroupName="<CHANGE_ME>"

#Select Subscription
#Syntax
Select-AZSubscription -SubscriptionId $subscriptionId

#Create Resouce Group
New-AzResourceGroup -Name $resourceGroupName -Location australiaeast

#deploy ARM template using powershell
New-AzResourceGroupDeployment -ResourceGroupName $resourcegroupName -TemplateFile "azuredeploy.json" -TemplateParameterFile "azuredeploy.parameters.json" -AsJob