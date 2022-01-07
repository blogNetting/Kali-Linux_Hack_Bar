# Kali-Linux - Hack Bar
Este repositorio contiene scripts para crear una barra inferior en la distribución Kali Linux con direcciones IP.
* Dirección IP local de la máquina.
* Dirección IP de la VPN.
* Dirección IP del objetivo y nombre.

El resultado final de la barra es el siguiente:

![Ejemplo](https://github.com/blogNetting/Kali-Linux_Hack_Bar/blob/main/images/bar.png)

## Instalación
Copia la carpeta **config/panels** del repositorio a `/home/kali/.config/panels`
```bash
cp config/panels /home/kali/.config/
```

Copia el siguiente código en tu `.zshrc` (fichero zshrc en el repositorio):

```bash
function settarget(){
    ip_address=$1
    machine_name=$2
    echo "$ip_address $machine_name" > /home/kali/.config/panels/target
}
```

***NOTA:** Recuerda cambiar el path a tu usuario /home/<my_user>

## Crear una nueva barra
Pulsa con el boton derecho en:
```
Panel -> Panel Preference...
```

Luego pulsa sobre el boton "**+**" para añadir un nuevo panel.
El nuvo panel aparecerá en la esquina superior izquierda.

Arrastra el panel hacia la parte inferior de la pantalla y aumenta el **Length** al máximo para que ocupe el ancho total del escritorio.
Habilita el **Lock Panel** para que la barra quede bloqueada y no se pueda mover.

Te recomiendo que pongas las mismas configuraciones que las mostradas en las siguientes imagenes:

![Ejemplo](https://raw.githubusercontent.com/blogNetting/Kali-Linux_Hack_Bar/main/images/second_panel_1.png)
![Ejemplo](https://raw.githubusercontent.com/blogNetting/Kali-Linux_Hack_Bar/main/images/second_panel_2.png)


### Añadir items
Para añadir los items a la barra debes de pulsar sobre el boton **+ Add** en la esquina inferior izquierda.

Utiliza la misma generarquia que la mostrada en la siguiente imagen:

![Ejemplo](https://raw.githubusercontent.com/blogNetting/Kali-Linux_Hack_Bar/main/images/second_panel_3.png)

### Item separator
Hay varios tipos de **separadores**. Los visibles, los transparantes, etc. En **style** debes de seleccionar *transparent* si quieres que el separador sea transparante, en este caso, también activa el checkbox de *Expand* para que genere una separación grande entre los componentes.

![Ejemplo](https://raw.githubusercontent.com/blogNetting/Kali-Linux_Hack_Bar/main/images/separator.png)

Fijate bien en la imagen principal si quieres obtener el mismo resultado que el mostrado.

### Generic Monitor
En estos **items** es en donde se debe de indicar el path en donde se ubica el script que genera la cadena de texto con la información a mostrar:

![Ejemplo](https://raw.githubusercontent.com/blogNetting/Kali-Linux_Hack_Bar/main/images/generic_monitor.png)

En la caja de texto del atributo Command selecciona el path del script correspondiente:

```
1º Generic Monitor --> /home/kali/.config/panels/ethernet_status.sh
2º Generic Monitor --> /home/kali/.config/panels/vpn_status.sh
3º Generic Monitor --> /home/kali/.config/panels/target_status
```

En la caja de texto del atributo Label deja sobre cuatro espacios en blanco. Es por simple estética.

Adapta el tiempo de actualización que consideres (**Periods**)


### Workspaces Switcher
Copia la siguiente configuración:

![Ejemplo](https://raw.githubusercontent.com/blogNetting/Kali-Linux_Hack_Bar/main/images/workspace.png)

# Funcionamiento
Todos los items se actualizan solos a excepción del item de la *máquina objetivo* que para añadir su contenido es necesario llamar a la función añadida al fichero `.zshrc` con los siguientes parametros:

```
settarget <ip> <name>
```

Ejemplo:


```
settarget 192.168.0.1 Router
```
