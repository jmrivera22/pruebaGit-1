**JOSE MANUEL RIVERA BOZA**
**PROXY INVERSO**
Primero,crearemos una máquina virtual la cual tenga un interfaz en modo puente.
Una vez instalada procederemos a instalar docker mediante los comandos proporcionados en el tema que son los siguientes.
![captura1](/imagenes/captura1.png)
![captura2](/imagenes/captura2.png)

Una vez instalado docker vamos a instalar tambien docker-compose mediante el comando sudo apt-get install docker-compose-plugin y sudo apt install docker-compose.
Crearemos un fichero docker-compose.yml donde añadiremos dos servicios nginx y un servicio nginx-proxy-manager.
Todos estos contenedores al ser un unico archivo de configuración esta en una misma red por defecto pero yo he decidido meterlos en una red creada por mi y llamada proxy_inverso.
![captura3](/imagenes/captura3.png)

Posteriormente,he creado dos index.html para que se muestren en la página de nginx1 y nginx2 con un mensaje de bienvenida según al contenedor que accedas.
En el archivo de configuración /etc/hosts he tenido que incluir mi dominio al haber realizado la práctica en local.
![captura4](/imagenes/captura4.png)

Por último,accedemos a la interfaz web del proxy-manager y añadimos dos proxy hosts que corresponderán a los contenedores nginx con las páginas web.La primera vez que accedemos a esta interfaz tendremos que cambiar el nombre de usuario y contraseña.
 ![captura5](/imagenes/captura5.png)