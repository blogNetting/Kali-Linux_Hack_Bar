# Kali-Linux - Hack Bar
Este repositorio contiene scripts para crear una barra inferior en la distribución Kali Linux con direcciones IP.
* Dirección IP local de la máquina.
* Dirección IP de la VPN.
* Dirección IP del objetivo y nombre.

El resultado final de la barra es el siguiente:

![Ejemplo](https://github.com/blogNetting/Kali-Linux_Hack_Bar/blob/main/images/bar.png)

## Instalación
Copia la carpeta **config/panels** del repositorio a `/home/<my_user>/.config/panels`
```bash
cp config/panels /home/<my_users>/.config/
```

### Crear una nueva barra
Pulsa con el boton derecho en:
´´´
Panel -> Panel Preference...
´´´

Luego pulsa sobre el boton **+** para añadir un nuevo panel.
El nuvo panel aparecerá en la esquina superior izquierda.

Arrastra el panel hacia la parte inferior de la pantalla y aumenta el **Length** al máximo para que ocupe el ancho total del escritorio.
Habilita el **Lock Panel** para que la barra quede bloqueada y no se pueda mover.

Te recomiendo que pongas las mismas configuraciones que las mostradas en las siguientes imagenes:
![Ejemplo](https://raw.githubusercontent.com/blogNetting/Kali-Linux_Hack_Bar/main/images/second_panel_1.png)
![Ejemplo](https://raw.githubusercontent.com/blogNetting/Kali-Linux_Hack_Bar/main/images/second_panel_2.png)
![Ejemplo](https://raw.githubusercontent.com/blogNetting/Kali-Linux_Hack_Bar/main/images/second_panel_3.png)
