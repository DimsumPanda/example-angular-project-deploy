variable "sshkey_name" {
  default     = "jenkins-sshkey"
  type        = string
  description = "sshkey saved in AWS to acccess VMs"
}
variable "server_port" {
  default     = "8080"
  type        = number
  description = "The port the server will use for HTTP requests"
}
variable "image_name" {
  default     = "example"
  type        = string
  description = "name will be used for the resource names and docker-compose"
}
variable "image_tag" {
  default     = "1-0-0"
  type        = string
  description = "name will be used for the resource names and docker-compose"
}
variable "image_registry" {
  default     = ""
  type        = string
  description = "Will be used for docker-compose"
}