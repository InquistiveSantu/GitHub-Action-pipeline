RG = {


  rg1 = {
    name     = "prod-rg-01"
    location = "centralindia"
  }


  rg2 = {
    name     = "prod-rg-02"
    location = "centralindia"
  }
}


VNET = {

  vnet1 = {

    name                = "lZVnetDevops"
    location            = "centralindia"
    resource_group_name = "productiongrde"
    address_space       = ["10.0.0.0/16"]

  }
}
SUBNET = {
  SUB1 = {
    name                 = "frontend"
    virtual_network_name = "lZVnetDevops"
    resource_group_name  = "productiongrde"
    address_prefixes     = ["10.0.1.0/24"]
  }
  SUB2 = {
    name                 = "backend"
    virtual_network_name = "lZVnetDevops"
    resource_group_name  = "productiongrde"
    address_prefixes     = ["10.0.2.0/24"]
  }
}
pip = {

  pip1 = {
    name                = "Linux-pip-01"
    resource_group_name = "productiongrde"
    location            = "centralindia"
    allocation_method   = "Static"

  }
  pip2 = {
    name                = "Linux-pip-02"
    resource_group_name = "productiongrde"
    location            = "centralindia"
    allocation_method   = "Static"

  }
}
VM = {
  vm1 = {
    name                 = "frontend-vm-nic-01"
    location             = "centralindia"
    resource_group_name  = "productiongrde"
    virtual_network_name = "lZVnetDevops"
    subnet_name          = "frontend"
    pip_name             = "Linux-pip-01"
    vm_name              = "Netflixlinuxvirtualmachine001"
    size                 = "Standard_D2ls_v5"
    admin_username       = "Santudevops"
    admin_password       = "4xut45niM8@123"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "0001-com-ubuntu-server-jammy"
    sku                  = "22_04-lts"
    version              = "latest"
    client_secret        = "MySuperSecret123"
  }
  vm2 = {
    name                 = "backend-vm-nic-01"
    location             = "centralindia"
    resource_group_name  = "productiongrde"
    virtual_network_name = "lZVnetDevops"
    subnet_name          = "backend"
    pip_name             = "Linux-pip-02"
    vm_name              = "Starbuckslinuxvirtualmachine002"
    size                 = "Standard_D2ls_v5"
    admin_username       = "Santudevops"
    admin_password       = "4xut45niM8@123"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "0001-com-ubuntu-server-jammy"
    sku                  = "22_04-lts"
    version              = "latest"
    github_token         = "xxx01erkjhfsdk345698"

  }
}