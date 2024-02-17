resource "docker_image" "image" {
  count = length(local.containers)

  name = local.containers[count.index].image
}

resource "docker_container" "container" {
  count = length(local.containers)

  name = local.containers[count.index].name
  image = docker_image.image[count.index].image_id
  command = ["/usr/bin/sleep", "infinity"]
}
