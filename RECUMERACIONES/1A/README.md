## Calificación:

+ No has entregado el README.md de la documentación.
+ ~~Tu Vagrantfile arroja error por lo que no puedo probar nada.~~
+ Rectifico tu Vagrantfile para añadir un nombre a la red interna creada `virtualbox__intnet: "lan"` y que tenga un arranque seguro.
+ No desarrolla la parte de la UT3

+ Respecto a UT1: **SUPERADA** \
    En el futuro, intenta respetar los nombres solicitados.
+ UT2: **SUPERADA**
    ```bash
    hostA: /tmp/vagrant-shell: line 6: /home/luis/trabajos: Is a directory
    hostA: /tmp/vagrant-shell: line 7: vagrant@hostB:/home/luis/trabajos.tar.gz: No such file or directory
    ```
    1. Deberías tener más cuidado con las asignaciones a variables en los scripts
    2. Utilizas nombres para los servidores y no tienes dns resolver, por lo que deberías haber utilizado ip ya que además se la asignas de forma estática

    La unidad está muy muy floja, pero parece que vas manejando los conceptos básicos.
+ UT3: **NO SUPERADA**

*Consejo: haz las prácticas desde cero **TÚ**. \ 
De que comprendas los problemas que surgen podrás enfrentarte a otros similares. \
Te dedicas a copiar los comandos que ejecutas en el interior de una máquina sobre un script o Vagrantfile sin tener en cuenta que los scripts no son interactivos.*