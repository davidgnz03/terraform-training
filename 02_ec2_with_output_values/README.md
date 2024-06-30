
### Manual de Uso

Este manual de uso está diseñado para guiarte en la configuración y despliegue de infraestructura utilizando los archivos proporcionados. A continuación, se detalla el propósito de cada archivo y cómo integrarlos en tu proyecto.

#### Archivos Incluidos
1. **apache-install.sh**
2. **main.tf**
3. **output.tf**
4. **variables.tf**
5. **versions.tf**

### 1. `apache-install.sh`
Este script se utiliza para instalar y configurar el servidor web Apache en una instancia EC2 de AWS.

**Contenido del script:**
```bash
#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl enable httpd
sudo service httpd start  
echo "<h1>Welcome to CloudMX! AWS Infra created using Terraform in us-east-1 Region</h1>" | sudo tee /var/www/html/index.html
```

**Instrucciones de uso:**
1. Ejecuta este script en una instancia de EC2 para instalar Apache.
2. El script actualizará el sistema, instalará Apache, habilitará el servicio para que se inicie al arrancar y finalmente iniciará el servicio.
3. Un mensaje de bienvenida será creado en la página principal del servidor web.

### 2. `main.tf`
Este archivo define los recursos principales de tu infraestructura en AWS.

**Contenido resumido:**
- Configura el proveedor de AWS.
- Define los recursos necesarios como instancias EC2, VPC, subnets, y otros componentes de red.

**Instrucciones de uso:**
1. Modifica los valores según tu configuración específica, como la región, tipo de instancia, y detalles de red.
2. Asegúrate de que los valores de las variables coincidan con tus necesidades.

### 3. `output.tf`
Define los outputs que se mostrarán después de aplicar la configuración de Terraform.

**Contenido resumido:**
- Especifica las salidas importantes como direcciones IP, nombres de instancias, y otros datos relevantes.

**Instrucciones de uso:**
1. Revisa y ajusta los outputs según la información que necesitas una vez que la infraestructura esté desplegada.
2. Estos outputs te ayudarán a acceder rápidamente a los recursos creados.

### 4. `variables.tf`
Contiene la definición de las variables usadas en el proyecto.

**Contenido resumido:**
- Define variables como el tipo de instancia, la región de AWS, etiquetas, entre otras.

**Instrucciones de uso:**
1. Revisa y ajusta las variables predeterminadas según tu entorno.
2. Utiliza estas variables en tus archivos `main.tf` y otros para una configuración más flexible.

### 5. `versions.tf`
Especifica las versiones de los proveedores y de Terraform.

**Contenido resumido:**
- Define la versión requerida de Terraform y los proveedores, garantizando compatibilidad.

**Instrucciones de uso:**
1. Asegúrate de tener instalada la versión de Terraform especificada o una compatible.
2. Mantén actualizadas las versiones de los proveedores para beneficiarte de las últimas mejoras y parches de seguridad.

### Procedimiento de Despliegue

1. **Inicialización de Terraform:**
   ```bash
   terraform init
   ```
2. **Validación de la configuración:**
   ```bash
   terraform validate
   ```
3. **Vista previa del plan de ejecución:**
   ```bash
   terraform plan
   ```
4. **Aplicación del plan:**
   ```bash
   terraform apply
   ```

### Consideraciones Finales

- Asegúrate de tener configuradas tus credenciales de AWS antes de ejecutar los comandos de Terraform.
- Revisa y ajusta los scripts y archivos de configuración según las necesidades de tu entorno y políticas de seguridad.

Este manual te proporcionará una base sólida para comenzar a trabajar con Terraform y los scripts proporcionados para desplegar tu infraestructura en AWS.
