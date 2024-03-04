DOCUMENTACIÓN.

Primero crearemos dos máquinas virtuales un cliente y un servidor.
En el servidor vamos a instalar openssh y en este caso queremos que no tenga permiso para acceder por ssh root,ni que permita accedr por contraseña.
Para ello en el fichero de configuración la directiva #PermitRootLogin prohibit-password la editamos y la ponemos asi PermitRootLogin no.Y cambiamos a no la directiva #PasswordAuthentication con esto no tendrá acceso root ni podremos acceder mediante contraseña.
Si queremos acceder por ssh a nuestro servidor,tendremos que copiar la clave pública del cliente en el directorio authorized_keys.

Si queremos bastionar el servidor con fail2ban,tendremos que descargarlo y editar el fichero jail a nuestro gusto,en mi caso tendrá un tiempo de baneo de 5 min y máximo dos intentos de contraseña erróneos.
bantime  = 5m	maxretry = 2

En el caso de querer utilizar el segundo factor de autentificación,lo descargamos con apt-get install -y libpam-google-authenticator.
editamos el fichero "/etc/pam.d/sshd"  y escribimos lo siguiente -> auth required pam_google_authenticator.so y en el fichero de configuración sshd ponemos a yes la siguiente directiva ChallengeResponseAuthentication.

Una vez configurado,ejecutamos el comando google-authenticator y se nos generará un código QR que escaneamos desde el móvil con la aplicación y ya tendremos listo el segundo factor de autentificación.

