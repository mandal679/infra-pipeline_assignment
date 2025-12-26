rg_config = {
  pras-rg-dev = {
    rg_name  = "pras-rg-dev"
    location = "East US"
  }
  pras-rg-prod = {
    rg_name  = "pras-rg-prod"
    location = "West US"
  }
}
vnet_config = {
  pras-vnet-dev = {
    virtual_network_name = "pras-vnet-dev"
    address_space        = ["10.0.0.0/16"]
    resource_group_name  = "pras-rg-dev"
    location             = "East US"

  }
}
subnet_config = {
  pras-subnet-dev = {
    subnet_name          = "pras-subnet-dev"
    resource_group_name  = "pras-rg-dev"
    virtual_network_name = "pras-vnet-dev"
    address_prefixes     = ["10.0.1.0/24"]
  }
}
ip_config = {
  pras-ip-dev = {
    ip_name             = "pras-ip-dev"
    resource_group_name = "pras-rg-dev"
    location            = "East US"
    allocation_method   = "Dynamic"
  }
}
nic_config = {
  pras-nic-dev = {
    nic_name             = "pras-nic-dev"
    resource_group_name  = "pras-rg-dev"
    location             = "East US"
    subnet_name          = "pras-subnet-dev"
    virtual_network_name = "pras-vnet-dev"
    ip_name              = "pras-ip-dev"
  }
}
nsg_config = {
  pras-nsg-dev = {
    nsg_name            = "pras-nsg-dev"
    resource_group_name = "pras-rg-dev"
    location            = "East US"
  }
}
nsg_nic_config = {
  pras-nsg-nic-dev = {
    nsg_name            = "pras-nsg-dev"
    nic_name            = "pras-nic-dev"
    resource_group_name = "pras-rg-dev"
  }
}
vm_config = {
  pras-vm-dev = {
    vm_name             = "pras-vm-dev"
    resource_group_name = "pras-rg-dev"
    vm_location         = "East US"
    nic_name            = "pras-nic-dev"
    vm_size             = "Standard_DS1_v2"
    admin_username      = "azureuser"
    admin_password      = "P@ssw0rd1234!"
    publisher           = "Canonical"
    offer               = "UbuntuServer"
    sku                 = "18.04-LTS"
  }
}

