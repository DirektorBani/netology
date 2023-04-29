# Заменить на ID своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_cloud_id" {
  default = ""
}

# Заменить на Folder своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_folder_id" {
  default = ""
}


variable "region" {
  default = "ru-central1-a"
}

# Заменить на ID своего образа
# ID можно узнать с помощью команды yc compute image list
variable "image_nat" {
  default = ""
}

variable "token" {
  default = ""
}

variable "image_vm" {
  default = ""
}

