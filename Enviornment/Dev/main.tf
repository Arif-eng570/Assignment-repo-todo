module "rg" {
  source  = "../../Modules/resource_group"
  rg_name = var.rg_name
  
}

module "vnet" {
  source     = "../../Modules/vnet"
  vnet       = var.rootvnet
  depends_on = [module.rg]

}

module "subnet" {
  source     = "../../Modules/subnet"
  subnets    = var.subnets
  depends_on = [module.rg, module.vnet]
}
module "pip" {
  source     = "../../Modules/public_ip"
  pip        = var.pip
  depends_on = [module.rg]
}
module "vms" {
  source = "../../Modules/linux_vm"
  vms    = var.vms
  depends_on = [module.rg, module.vnet, module.subnet, module.pip]
}

