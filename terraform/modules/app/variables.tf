variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable "subnet_id" {
  description = "Subnets for modules"
}
variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "reddit-base-1699281544"
}
