terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "8fe266af-9a8d-40b0-bcb6-08d23e112c60"
  
  features {}
}

locals {
  workspace_suffix = terraform.workspace == "default" ? "" : "${terraform.workspace}"

  rg_name    = terraform.workspace == "default" ? "${var.rgname}" : "${var.rgname}-${local.workspace_suffix}"
  #sa_name    = terraform.workspace == "default" ? "${var.sa_name}" : "${var.sa_name}${local.workspace_suffix}"
  web_suffix = "<h1>${terraform.workspace}</h1>"
}

resource "azurerm_resource_group" "rg" {
  name     = var.rgname
  location = var.location
}

module "networking" {
  source     = "./modules/networking"
  rgname     = azurerm_resource_group.rg.name
  location   = azurerm_resource_group.rg.location
  vnetname   = var.vnetname
  nsgname    = var.nsgname
  subnet1name = var.subnet1name
  subnet2name = var.subnet2name
}