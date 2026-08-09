data "azurerm_public_ip" "public_ip_block" {
for_each = var.VM
  name                =  each.value.pip_name
 resource_group_name =  each.value.resource_group_name
}

  
data "azurerm_subnet" "subnet_name" {
    for_each = var.VM
  name                 = each.value.subnet_name 
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}