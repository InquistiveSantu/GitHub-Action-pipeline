terraform {


  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.0.0"
    }
  }
}


provider "azurerm" {


  features {

  }


  subscription_id = "cb3e8561-a725-40e6-b68e-215fab3c5c18"
}