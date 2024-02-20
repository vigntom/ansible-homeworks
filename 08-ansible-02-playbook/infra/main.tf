resource "docker_image" "image" {
  count = length(local.containers)

  name = local.containers[count.index].image
}

resource "docker_container" "container" {
  count = length(local.containers)

  name = local.containers[count.index].name
  image = docker_image.image[count.index].image_id
  ports {
    internal = 9000
    external = 9000
  }
  ports {
    internal = 8123
    external = 8123
  }
  command = ["/usr/bin/sleep", "infinity"]
}
