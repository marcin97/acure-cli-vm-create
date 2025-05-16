az group create --name script --location "Poland Central"
az network vnet create --resource-group script --name vnet --address-prefixes 10.0.0.0/16 --subnet-name subnet --subnet-prefixes 10.0.1.0/24
az network nic create --resource-group script --name nic --vnet-name vnet --subnet subnet
az vm create --resource-group script --name vm --nics nic --image Win2019Datacenter --size Standard_DS1_v2 --admin-username Marcin