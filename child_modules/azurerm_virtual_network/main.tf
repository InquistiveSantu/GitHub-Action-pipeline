resource "azurerm_virtual_network" "block2" {

  for_each            = var.VNET
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space



}
