data "azurerm_resource_group" "block2" {
  for_each = var.VNET
  name     = each.value.resource_group_name
}