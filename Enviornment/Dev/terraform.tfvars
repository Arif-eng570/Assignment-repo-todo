rg_name = {
  "rg1" = {
    name     = "rg-arif01"
    location = "East US"
  }
}

rootvnet = {
  "vnet1" = {
    name                = "dev-network"
    location            = "East US"
    resource_group_name = "rg-arif01"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  "subnet1" = {
    name                 = "khan1"
    address_prefixes     = ["10.0.1.0/24"]
    resource_group_name  = "rg-arif01"
    virtual_network_name = "dev-network"
  }
}

pip = {
  "pip1" = {
    name                = "public-ip-arif01"
    resource_group_name = "rg-arif01"
    location            = "East US"
    sku                 = "Standard"
    allocation_method   = "Static"
  }
}


vms = {
  "vm1" = {
   nic_name                       = "nic-arif01"
    location                      = "East US"
    resource_group_name           = "rg-arif01"
    name                          = "ipconfig1"
    private_ip_address_allocation = "Dynamic"
    subnet_name                   = "khan1"
    virtual_network_name          = "dev-network"
    pip_name                      = "public-ip-arif01"
    vm_name                       = "vm-arif01"
    size                          = "Standard_D2s_v3"
    # nsg_name                      = "nsg-arif01"
    admin_username                = "azureuser"
    admin_password                = "Password1234!@#"
  }
}




