variable "username" {
  description = "User name of the Kestra instance"
  type        = string
  sensitive   = true
}

variable "password" {
  description = "Password of the Kestra instance"
  type        = string
  sensitive   = true
}

variable "hostname" {
  description = "Hostname of the Kestra instance"
  type        = string
}
