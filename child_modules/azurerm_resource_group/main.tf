resource "azurerm_resource_group" "block1" {

  for_each = var.RG
  name     = each.value.name
  location = each.value.location
}

