terraform {
  required_version = ">= 0.13.1"

  required_providers {
    shoreline = {
      source  = "shorelinesoftware/shoreline"
      version = ">= 1.11.0"
    }
  }
}

provider "shoreline" {
  retries = 2
  debug = true
}

module "check_gpu_statistics" {
  source    = "./modules/check_gpu_statistics"

  providers = {
    shoreline = shoreline
  }
}