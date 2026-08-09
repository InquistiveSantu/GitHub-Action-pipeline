resource "azurerm_subnet" "block3" {
    for_each= var.SUBNET
  name                 = each.value.name
  resource_group_name  = data.azurerm_virtual_network.block4.resource_group_name
  virtual_network_name = data.azurerm_virtual_network.block4.name
  address_prefixes     = each.value.address_prefixes
  }


  

 