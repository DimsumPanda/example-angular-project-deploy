data "template_file" "docker_compose" {
  template = file("${path.module}/docker-compose.yml")
}

data "template_file" "startup" {
  template = file("${path.module}/startup.yml.tpl")
  vars = {
    COMPOSE_CONTENT = "${base64encode(data.template_file.docker_compose.rendered)}"
  }
}
