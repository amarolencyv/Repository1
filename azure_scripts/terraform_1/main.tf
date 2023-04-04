terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "=3.31.0"
        }
    }
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg2" {
    name: "terraform-resource-group"
    locaton: "East US"
}

data "azurerm_resource_group" "rg"{
    resource_group_name = "testRG"
}

