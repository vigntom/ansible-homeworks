terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }

  required_version = ">= 0.15"
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}
