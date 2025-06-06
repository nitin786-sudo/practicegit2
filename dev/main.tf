module "rg" {
  source = "../rg"
  rgname = var.rgname
}

module "vnet" {
  source = "../vnet"
  vnet_name = var.vnet_name
  depends_on = [ module.rg ]
}

module "subnet" {
  source = "../subnet"
  depends_on = [ module.vnet ]
  subnet_name = var.subnet_name
}

module "vm" {
    source = "../vm"
    depends_on = [ module.vnet ]
    vm = var.vm
}