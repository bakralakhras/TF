module "resource" {
  source  = "./modules/resource-group"
  name    = "bkr001-resource-group"
  location = "East US"
}

module "vnet" {
  source              = "./modules/virtual-network"
  resource_group_name = module.resource.name
  resource_group_location = module.resource.location
}
module "subnet"{
  source = "./modules/subnet"
  resource_group_name = module.resource.name
  virtual_network_name = module.vnet.name
  }

  module "app_service_plan" {
    source = "./modules/app_service_plan"
    resource_group_location = module.resource.location
    resource_group_name = module.resource.name
    }

    module "app_service"{
      source = "./modules/app_service"
      resource_group_location = module.resource.location
      resource_group_name = module.resource.name
      app_service_plan_id = module.app_service_plan.app_service_plan_id
    }

    module "swift"{
      source = "./modules/swift_connection"
      app_service_id = module.app_service.app_service_id
      subnet_id = module.subnet.subnet_id
    }