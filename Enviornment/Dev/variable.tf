variable "rg_name" {
  type = map(object({
    name     = string
    location = string
  }))

}

variable "rootvnet" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
  }))
}

variable "subnets" {
  description = "A map of subnets to create"
  type        = map(object({
    name                 = string
    address_prefixes     = list(string)
    resource_group_name  = string
    virtual_network_name = string
  }))
}

variable "pip" {
  description = "A map of public IP configurations"
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    sku                 = string
    allocation_method   = string
  }))

}

variable "vms" {
  type = map(object({
    nic_name                       = string
    location                      = string
    resource_group_name           = string
    name                          = string
    private_ip_address_allocation = string
    subnet_name                   = string
    virtual_network_name          = string
    pip_name                      = string
    vm_name                       = string
    size                          = string
    # nsg_name                      = string
    admin_username                = string
    admin_password                = string
  }))
}


