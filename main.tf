provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  # Result: rg-dev or rg-test
  name     = "${var.rg_name_prefix}-${terraform.workspace}"
  location = var.location
}

resource "azurerm_virtual_network" "main" {
  name                = "${var.vnet_name_prefix}-${terraform.workspace}"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  address_space       = var.address_space
}