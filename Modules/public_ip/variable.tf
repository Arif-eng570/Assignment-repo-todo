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