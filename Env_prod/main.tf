module "azurerm_resource_group" {

  source = "../child_modules/azurerm_resource_group"
  RG     = var.RG

}

module "azurerm_virtual_network" {

  source     = "../child_modules/azurerm_virtual_network"
  VNET       = var.VNET
  depends_on = [module.azurerm_resource_group]

}

module "azurerm_subnet" {

  source     = "../child_modules/azurerm_Subnet"
  SUBNET     = var.SUBNET
  depends_on = [module.azurerm_virtual_network]

}


module "azurerm_public_ip" {

  source     = "../child_modules/azurerm_public_ip"
  pip        = var.pip
  depends_on = [module.azurerm_resource_group]

}

module "azurerm_virtual_machine" {
  source     = "../child_modules/azurerm_nic_card_virtual_machine"
  VM         = var.VM
  depends_on = [module.azurerm_subnet, module.azurerm_public_ip]

}