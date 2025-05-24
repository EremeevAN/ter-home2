variable "vm_web" {
  type = object({
    family          = string
    name            = string
    platform_id     = string
    cores           = number
    memory          = number
    core_fraction   = number
  })
  default = {
    family          = "ubuntu-2004-lts"
    name            = "netology-develop-platform-web"
    platform_id     = "standard-v3"
    cores           = 2
    memory          = 1
    core_fraction   = 20
    }
}

variable "vm_db" {
  type = object({
    family          = string
    name            = string
    platform_id     = string
    cores           = number
    memory          = number
    core_fraction   = number
  })
  default = {
    family          = "ubuntu-2004-lts"
    name            = "netology-develop-platform-db"
    platform_id     = "standard-v3"
    cores           = 2
    memory          = 2
    core_fraction   = 20
    }
}

variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
  default = {
    web = {
      cores         = 2
      memory        = 2  
      core_fraction = 20 
    },
    db = {
      cores         = 2
      memory        = 2  
      core_fraction = 20 
    }
  }
}