## Controlador para Modulo WIFI -> ESP8266-ESP-01  ##
***
Agradecer primero a [Obijuan](https://github.com/Obijuan), que ha creado muchas colecciones que son el pilar de lo que yo intento hacer aquí. En su perfil hay mucha info y tutoriales, todo libre, por supuesto, sobre Fpga's. Muchas gracias!!

Tambien hay un grupo en google [Fpga-wars](https://groups.google.com/forum/#!forum/fpga-wars-explorando-el-lado-libre) donde se comparte mucha info y avances. No quiero olvidarme de nadie... Eladio, Charliva, Jesus Arroyo, Juanma Rico, Jose Pico, Democrito... y a todos
Muchas Gracias!
***
### Manos a la obra
+ Plataforma de desarrollo [Icestudio](https://icestudio.io/)  version 0.5.1 nightlies
+ Placa FPGA - [Alhambra 2](https://github.com/FPGAwars/Alhambra-II-FPGA)

***
El modulo wifi que utilizamos es el Esp8266-ESP-01

![Esp8266](https://github.com/vascodh/Chapuzas-con-FPGA-S-Libres/blob/master/Controladores/Esp8266-ESP-01/Documentos/ESP-01-ESP8266.jpg)

Pines del modulo

![Esp82661](https://github.com/vascodh/Chapuzas-con-FPGA-S-Libres/blob/master/Controladores/Esp8266-ESP-01/Documentos/ESP-01-pinout.png)

Conexión entre la Alhambra 2 y el modulo

![Conexiones](https://github.com/vascodh/Chapuzas-con-FPGA-S-Libres/blob/master/Controladores/Esp8266-ESP-01/Documentos/Conexion_esp.png)

La comunicación con el modulo ESP8266-ESP-01 se realiza por puerto serie a una velocidad de 115200 baudios que viene configurada
de fábrica.
El modulo tiene un software pre instalado y puede configurarse mediante comandos AT, mediante una serie de comandos específicos.

Una vez conectado el modulo como se indicó, al enceder la Alhambra arranca el módulo, si inicia de forma correcta queda a la espera de los comandos.

El mas básico es "AT", al cual el modulo, si se encuentra operando correctamente, responde con la cadena "OK"

El circuito para que nuestra FPGA se comunique con el módulo consta de dos partes un emisor serie, el cual envía la cadena "AT" y un receptor serie que muestra en una consola SERIE (ej. [ScriptCommunicator](https://github.com/Obijuan/digital-electronics-with-open-FPGAs-tutorial/wiki/V%C3%ADdeo-30:-Puerto-serie#instalaci%C3%B3n-del-scriptcommunicator)) todo lo que el módulo nos envíe.

![Circuito_esmisor](https://github.com/vascodh/Chapuzas-con-FPGA-S-Libres/blob/master/Controladores/Esp8266-ESP-01/Documentos/Circuito-fpga-emisor.png)
Cuando se envía la cadena con los comandos se debe enviar al final los caracteres CR y LF (0D y 0A en HEX) de otra forma el modulo da error
  
![Circuito_receptor](https://github.com/vascodh/Chapuzas-con-FPGA-S-Libres/blob/master/Controladores/Esp8266-ESP-01/Documentos/Circuito-fpga-receptor.png)  
La parte de recepción serie, recibe del pin tx del módulo las respuestas a los comandos AT ingresados.
+ Todo lo que se recibe se muestra por el puerto serie sacandolo por el pin Tx
+ Si se reciben consecutivamente los caracteres "O" y "K" se emite un tíc que se utiliza para hacer parpadear un led.

El circuito para probrarlo en el ICESTUDIO, en la sección de ejemplos -> [Conexión-Esp8266](https://github.com/vascodh/Chapuzas-con-FPGA-S-Libres/blob/master/Controladores/Esp8266-ESP-01/Ejemplos-ICESTUDIO/)
***
### Controlador Esp8266-ESP-01 - Modo Estación - Mode station
Este controlador se encarga de configurar el modulo en  Modo estación, el cual permite conectarse a una red wifi hogareña y establecer una ip fija a traves de la cual podemos comunicarnos inalambricamente con el módulo y a su vez con la Fpga - Alhambra 2.

En el siguiente ejemplo [ESP8266-Wifi-Test-01.ice](https://github.com/vascodh/Chapuzas-con-FPGA-S-Libres/tree/master/Controladores/Esp8266-ESP-01/Ejemplos-ICESTUDIO) se configura automaticamente el Modulo ESP8266

![Esp8266-mode-station](https://github.com/vascodh/Chapuzas-con-FPGA-S-Libres/blob/master/Controladores/Esp8266-ESP-01/Documentos/ESP-01-ESP8266-Mode-station.svg)
#### Archivos de configuración - se pasan como parametro
+ ip.list -> Contiene la IP fija a asignar
+ ssid.list -> Nombre de la red Wifi a la que queremos que el modulo se conecte
+ pass.list -> Contraseña de la red Wifi
+ Estos archivos deben estar en la misma carpeta que el ejemplo

Video ejemplo mostrando la carga en la fpga [Carga ejemplo](https://youtu.be/zkvY8XCA9cw)

[Video del funcionamiento](https://youtu.be/p_D9Acy_0II), le damos reset a la placa y vemos como parpadea el led hasta que se conecta
