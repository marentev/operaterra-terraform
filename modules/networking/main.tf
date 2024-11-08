resource "azurerm_network_security_group" "nsg" {
  name                = var.nsgname
  location            = var.location
  resource_group_name = var.rgname
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnetname
  location            = var.location
  resource_group_name = var.rgname
  address_space       = ["10.0.0.0/16"]

  subnet {
    name             = var.subnet1name
    address_prefixes = ["10.0.1.0/24"]
    security_group = azurerm_network_security_group.nsg.id
  }

  subnet {
    name             = var.subnet2name
    address_prefixes = ["10.0.2.0/24"]
    security_group   = azurerm_network_security_group.nsg.id
  }
}