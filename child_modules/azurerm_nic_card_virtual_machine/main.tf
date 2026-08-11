resource "azurerm_network_interface" "block-nic" {
for_each = var.VM
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet_name[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = data.azurerm_public_ip.public_ip_block[each.key].id
  }
}
 resource "azurerm_linux_virtual_machine" "vm_block" {
  for_each = var.VM
  name                = each.value.vm_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = each.value.size
  admin_username                  = each.value.admin_username
  disable_password_authentication = lookup(each.value, "disable_password_authentication", false)
  admin_password                  = each.value.admin_password
network_interface_ids = [
    azurerm_network_interface.block-nic[each.key].id]

  
  os_disk {
    caching              = each.value.caching
    storage_account_type = each.value.storage_account_type
  }

  source_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }
}









