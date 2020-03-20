## Controlador para Modulo WIFI -> ESP8266-ESP-01  ##
***
+ Plataforma de desarrollo [Icestudio](https://icestudio.io/)  version 0.5.1 nightlies
+ Placa FPGA - [Alhambra 2](https://github.com/FPGAwars/Alhambra-II-FPGA)

***
El modulo wifi que utilizamos es el Esp8266-ESP-01

![Esp8266](https://github.com/vascodh/Chapuzas-con-FPGA-S-Libres/blob/master/Controladores/Esp8266-ESP-01/Documentos/ESP-01-ESP8266.jpg)

Pines del modulo

![Esp82661](https://github.com/vascodh/Chapuzas-con-FPGA-S-Libres/blob/master/Controladores/Esp8266-ESP-01/Documentos/ESP-01-pinout.png)

Conexión entre la Alhambra 2 y el modulo

![Conexiones](https://github.com/vascodh/Chapuzas-con-FPGA-S-Libres/blob/master/Controladores/Esp8266-ESP-01/Documentos/Conexion_esp.png)

***
La comunicación con el modulo ESP8266-ESP-01 se realiza por puerto serie a una velocidad de 115200 baudios que viene configurada
de fábrica.
El modulo tiene un software pre instalado y puede configurarse mediante comandos AT, mediante una serie de comandos específicos.

Una vez conectado el modulo como se indicó, al enceder la Alhambra arranca el módulo, si inicia de forma correcta queda a la espera de los comandos.

El mas básico es "AT", al cual el modulo, si se encuentra operando correctamente, responde con la cadena "OK"

El circuito para que nuestra FPGA se comunique con el módulo consta de dos partes un emisor serie, el cual envía la cadena "AT" y un receptor serie que muestra en una consola SERIE (ej. [ScriptCommunicator](https://github.com/Obijuan/digital-electronics-with-open-FPGAs-tutorial/wiki/V%C3%ADdeo-30:-Puerto-serie#instalaci%C3%B3n-del-scriptcommunicator)) todo lo que el módulo nos envíe.

![Circuito_esmisor](https://github.com/vascodh/Chapuzas-con-FPGA-S-Libres/blob/master/Controladores/Esp8266-ESP-01/Documentos/Circuito-fpga-emisor.png)
Cuando se envía la cadena con los comandos se debe enviar al final los caracteres CR y LF (0D y 0A en HEX) de otra forma el modulo da error
  
![Circuito_receptor](https://github.com/vascodh/Chapuzas-con-FPGA-S-Libres/blob/master/Controladores/Esp8266-ESP-01/Documentos/Circuito-fpga-receptor.png)  

El circuito para probrarlo en el ICESTUDIO, en la sección de ejemplos -> [Conexión-Esp8266](https://github.com/vascodh/Chapuzas-con-FPGA-S-Libres/blob/master/Controladores/Esp8266-ESP-01/Ejemplos-ICESTUDIO/)
