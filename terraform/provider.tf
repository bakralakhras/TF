terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.63.0"
    }
  }
}

provider "azurerm" {
  features {}
 subscription_id = "ea2fa760-0603-4d46-a646-92ddcfebea32"
  client_id = "4640cfe3-164e-427d-aed7-e657407a236a"
  client_secret = "Xse8Q~0QqtYM6T3IxhF5MM5T5IoQWh861j7IcaLn"
  tenant_id = "e6539dad-cb71-45e9-b909-67eeb7871b13"
}
