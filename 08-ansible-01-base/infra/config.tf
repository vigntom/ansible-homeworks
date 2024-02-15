locals {
  containers = [
    {
      name: "ubuntu",
      image: "vigntom/ubuntu-20.04"
    },
    {
      name: "centos7",
      image: "centos:7"
    },
    {
      name: "fedora-py",
      image: "pycontribs/fedora"
    }
  ]
}
