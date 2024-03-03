resource "azurerm_managed_disk" "example" {
  name                 = "Test-VM-disk1"
  location             = azurerm_resource_group.rg.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 30
}

resource "azurerm_virtual_machine_data_disk_attachment" "example" {
  managed_disk_id    = azurerm_managed_disk.example.id
  virtual_machine_id = azurerm_windows_virtual_machine.example.id
  lun                = "0"
  caching            = "None"
}
resource "azurerm_managed_disk" "example2" {
  name                 = "Test-VM-disk2"
  location             = azurerm_resource_group.rg.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 15
}

resource "azurerm_virtual_machine_data_disk_attachment" "example2" {
  managed_disk_id    = azurerm_managed_disk.example2.id
  virtual_machine_id = azurerm_windows_virtual_machine.example.id
  lun                = "1"
  caching            = "None"
}