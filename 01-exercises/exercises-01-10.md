# PRIMEROS PASOS (EJERCICIOS)

# **Ejercicios**

---

### **1. En la terminal, muestra el directorio en el que estás ahora.**

Comando:

```bash
pwd
```

Salida:

```bash
/c/Users/NatyA
```

Descripción:

**`pwd`** (*print working directory*) sirve para ver en qué ubicación estás dentro del sistema de archivos.

### **2. Cambia al directorio Documentos (o Documents) de tu sistema.**

Comando:

```bash
cd Documents
```

Confirmar con:

```bash
pwd
```

Salida:

```bash
/c/Users/NatyA/Documents
```

Explicación:

`cd` permite navegar entre directorios. Primero cambias y luego confirmas con `pwd`.

### **3. Vuelve al mismo directorio (Documentos o Documents), pero esta vez usando una ruta absoluta completa.**

Comando:

```bash
cd /c/Users/NatyA/Documents/
```

Salida:

```bash
/c/Users/NatyA/Documents
```

Explicación:

Una ruta absoluta empieza desde `/` y funciona sin importar en qué directorio esté actualmente.

### **4. Sube un nivel en la jerarquía de directorios.**

Comando:

```bash
cd ..
```

Salida:

```bash
/c/Users/NatyA
```

Explicación:

`..` es una ruta relativa que apunta al directorio padre. Sirve para subir un nivel sin importar en qué carpeta estés.

### **5. Lista el contenido del directorio actual en formato simple, luego largo y finalmente incluyendo archivos ocultos.**

Formato simple:

```bash
ls
```

Formato largo:

```bash
ls -l
```

Archivos ocultos:

```bash
ls -a
```

Largo, ocultos y tamaño legible:

```bash
ls -lha
```

Explicación:

`ls` permite listar el contenido del directorio actual. 
Las opciones `-l`, `-a` y `-h` modifican la forma en que se muestra la información.

### **6. Consulta el manual de algún comando.**

Comando:

```bash
man ls
```

Explicación:

`man` muestra el manual completo del comando. Presiona `q` para salir.

### **7. Consulta la ayuda de algún comando.**

Comando:

```bash
ls --help
```

Explicación:

`--help` muestra una versión breve de ayuda del comando, útil para ver rápidamente las opciones disponibles.

### **8. Muestra tu nombre de usuario, la fecha, hora actuales y el calendario de este mes.**

1. Mostrar tu nombre de usuario
    
    Comando:
    
    ```bash
    whoami
    ```
    
    Salida:
    
    ```bash
    natx
    ```
    
2. Mostrar la fecha y hora actuales
    
    Comando:
    
    ```bash
    date
    ```
    
    Salida:
    
    ```bash
    Tue Nov 25 11:36:00 CST 2025
    ```
    
3. Mostrar el calendario del mes
    
    Comando:
    
    ```bash
    cal
    ```
    
    Salida:
    
    ```bash
       November 2025      
    Su Mo Tu We Th Fr Sa  
                       1  
     2  3  4  5  6  7  8  
     9 10 11 12 13 14 15  
    16 17 18 19 20 21 22  
    23 24 25 26 27 28 29  
    30 
    ```
    

Explicación:

- **`whoami`** : muestra el nombre del usuario con el que estás actualmente logueado.
- **`date`** : muestra la fecha y hora actuales del sistema.
- **`cal`** : muestra el calendario del mes en curso.

### **9. Regresa al directorio donde comenzaste en el primer ejercicio.**

Comando:

```bash
cd ~
```

Confirmar con:

```bash
pwd
```

Salida: 

```bash
/home/natx
```

Explicación:

- **`cd ~`** → la tilde (`~`) representa el directorio HOME del usuario.
- También podrías usar:
    - `cd` (sin argumentos)
    - `cd /home/tu_usuario` (ruta absoluta)

### **10. Limpia la pantalla.**

Comando: 

```bash
clear
```

Explicación:

- **`clear`**: borra todo el contenido visible de la terminal.
- No elimina historial, solo limpia la pantalla.
- También funciona el atajo de teclado: **Ctrl + L**.