resource "docker_image" "ubuntu" {
  name = "vigntom/ubuntu-20.04"
}

resource "docker_image" "centos7" {
  name = "centos:7"
}

resource "docker_container" "ubuntu" {
  image   = docker_image.ubuntu.image_id
  name    = "ubuntu"
  command = ["/bin/sleep", "infinity"]
}

resource "docker_container" "centos7" {
  image = docker_image.centos7.image_id
  name  = "centos7"
  command = ["/usr/bin/sleep", "infinity"]
}
