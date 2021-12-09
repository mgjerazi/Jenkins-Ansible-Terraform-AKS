resource "azurerm_virtual_network" "cluster" {
  name                = "vn-cluster-ks"
  address_space       = ["10.10.0.0/16"]
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
}

resource "azurerm_subnet" "cluster" {
  name                 = "subnet-cluster-ks"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.aks.name
  address_prefixes     = ["10.10.2.0/24"]
}