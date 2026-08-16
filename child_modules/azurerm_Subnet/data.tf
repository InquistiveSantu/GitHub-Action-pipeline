data "azurerm_virtual_network" "block4" {
  for_each            = var.SUBNET
  name                = each.value.virtual_network_name
  resource_group_name = each.value.resource_group_name
}
