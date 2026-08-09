resource "azurerm_virtual_network" "block2" {

for_each = var.VNET
  name                = each.value.name
  location            = each.value.location
  resource_group_name = data.azurerm_resource_group.block2.name
  address_space       = each.value.address_space
  


}




