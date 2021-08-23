/* this terraform program downloads a nginx image (if not present)
and creates a container out of it which can be accessed by going 
to localhost:8000 in your local machine*/

// author : Rahul Maheshwari

// docker source
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

provider "docker" {}

// resource = docker image
resource "docker_image" "nginx" {
  name         = var.docker_image
  keep_locally = false
}

// resource = container
resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = var.container_name
  ports {
    internal = 80
    external = 8000
  }
}

