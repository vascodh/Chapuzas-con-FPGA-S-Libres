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


