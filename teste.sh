STORAGE=metricsstorage$RANDOM

az storage account create \
    --name $STORAGE \
    --sku Standard_LRS \
    --location eastus2 \
    --resource-group learn-b62403e9-2ec6-4a74-9569-740d4ee722b7

az vm create \
    --resource-group myResourceGroup \
    --name myVM \
    --size Standard_NV24 \
    --location eastus2 \
    --image Win2019Datacenter \
    --public-ip-sku Standard \
    --admin-username azureuser 
    --admin-password Administrador123
    --boot-diagnostics-storage $STORAGE \
    --resource-group learn-b62403e9-2ec6-4a74-9569-740d4ee722b7 \
    --generate-ssh-keys
