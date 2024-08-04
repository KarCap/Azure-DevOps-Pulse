# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" 
    }
  }
  backend "azurerm" {
    resource_group_name  = "storagerg"
    storage_account_name = "cosstorage1234567"
    container_name       = "tfstatefile"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
