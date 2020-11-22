data "template_file" "docker_compose" {
  template = file("${path.module}/docker-compose.yml")
  vars = {
    IMAGE_NAME       = var.image_name
    IMAGE_TAG        = var.image_tag
    IMAGE_REGISTRY   = var.image_registry
  }
}

data "template_file" "startup" {
  template = file("${path.module}/startup.yml.tpl")
  vars = {
    COMPOSE_CONTENT = "${base64encode(data.template_file.docker_compose.rendered)}"
  }
}
