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


  subscription_id = "1901e74c-f287-4ad5-a027-7e82572afe7a"
}