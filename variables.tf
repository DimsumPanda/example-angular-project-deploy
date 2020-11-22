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
variable "application_name" {
  default     = "example"
  type        = string
  description = "name will be used for the resource names"
}