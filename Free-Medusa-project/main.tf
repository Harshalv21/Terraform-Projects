resource "docker_image" "medusa" {
  name         = "your-dockerhub-username/medusa-backend:latest"
  keep_locally = true
}

resource "docker_container" "medusa" {
  name  = "medusa-backend"
  image = docker_image.medusa.image_id

  ports {
    internal = 9000
    external = 9000
  }
}
