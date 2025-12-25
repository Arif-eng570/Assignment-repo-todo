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
