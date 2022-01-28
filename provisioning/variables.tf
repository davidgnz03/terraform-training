variable "region" {
    description = "Region para el despliegue de la infraestructura"
    type = string
    #default = "valor"

}

variable "profile" {
    description = "Perfil o role de ejecución"
    type = string
    #default = "valor"
}

variable "name" {
    description = "Nombre de quien lo ejecuta"
    type = string
}