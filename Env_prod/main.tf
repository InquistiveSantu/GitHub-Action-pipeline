module "azurerm_resource_group" {

  source = "../child_modules/azurerm_resource_group"
  RG     = var.RG

}

module "azurerm_virtual_network" {

  source = "../child_modules/azurerm_virtual_network"
  VNET   = var.VNET

}

module "azurerm_subnet" {

  source = "../child_modules/azurerm_Subnet"
  SUBNET = var.SUBNET

}


module "azurerm_public_ip" {

  source = "../child_modules/azurerm_public_ip"
  pip    = var.pip

}

module "azurerm_virtual_machine" {
  source  = "../child_modules/azurerm_nic_card_virtual_machine"
  VM = var.VM

}