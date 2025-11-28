# GESTIÓN DE ARCHIVOS (EJERCICIOS)

# Ejercicios

---

### **1. Crea un directorio.**

Comando:

```bash
mkdir bash-exercises
```

Confirmar dirección: 

```bash
pwd
```

Salida: 

```bash
/home/natx/Bash-course/bash-exercises
```

Explicación:

`mkdir` crea nuevas carpetas/directorios en el sistema. En este caso, se crea una carpeta llamada `bash-exercises`.
Luego `pwd` muestra la ruta actual para confirmar que el directorio se creó en la ubicación correcta.

### **2. Elimina el directorio que acabas de crear.**

Comando:

```bash
rmdir bash-exercises
```

Explicación:

`rmdir` elimina directorios, pero **solo si están vacíos**.
Si hay archivos dentro, el sistema no permitirá borrarlo a menos que se use una opción recursiva.

### **3. Copia un archivo en el directorio actual y fuera de éste.**

Comando usados:

```bash
cp LICENSE.txt LICENCIA.txt     # copia un archivo
cp -r bash-exercises carpeta-1  # copia recursiva de un directorio
cp -a bash-exercises Cursos     # copia completa conservando permisos y estructura
```

Confirmar:

```bash
ls
```

Salida:

```bash
LICENCIA.txt  LICENSE.txt
LICENCIA.txt  LICENSE.txt  bash-exercises
Cursos  LICENCIA.txt  LICENSE.txt  bash-exercises
```

Explicación: 

- `cp` copia archivos individuales.
- `cp -r` permite copiar directorios completos con su contenido.
- `cp -a` copia manteniendo permisos, estructura y metadatos → ideal para respaldos.

### **4. Mueve un archivo del directorio actual.**

Comando:

```bash
mv LICENCIA.txt Cursos/
```

Explicación:

`mv` mueve archivos a otra ruta o directorio.
En este caso el archivo `LICENCIA.txt` pasa a ubicarse dentro de la carpeta `Cursos/`.

### **5. Cambia el nombre del archivo que acabas de mover.**

Comando:

```bash
mv LICENCIA.txt LEEME.txt
```

Explicación:

Con `mv` también es posible renombrar archivos.
El archivo original `LICENCIA.txt` cambia su nombre a `LEEME.txt`.

### **6. Lista todos los archivos de un tipo usando un comodín.**

Comando:

```bash
ls *.txt
```

Salida:

```bash
Doc.txt  Hola.txt  LICENSE.txt
```

Explicación:

`*.txt` actúa como **wildcard** (comodín) y devuelve todos los archivos que terminen con `.txt`.
Es útil para filtrar archivos por formato o patrón.

### **7. Elimina un directorio de manera recursiva (cuidado con lo que vas a borrar).**

Comando:

```bash
rm -r carpeta-2/
```

Explicación:

`rm -r` borra directorios completos incluyendo archivos dentro de ellos.
Debe usarse con cuidado porque **lo que se borra no se recupera fácilmente**.

### **8. Elimina todos los archivos de un mismo tipo (cuidado con lo que vas a borrar).**

Comando:

```bash
rm *.txt
```

Explicación:
El comando elimina **todos los archivos con extensión `.txt`** dentro del directorio actual.
Es una forma rápida pero riesgosa de limpiar archivos masivamente.

> Antes de ejecutar puedes verificar qué se eliminará con:
> 
> 
> ```bash
> ls *.txt
> ```
> 

### **9. Utiliza el comando tree.**

Comando:

```bash
tree
```

Salida:

```bash
.
├── bash-exercises
└── carpeta-1
    ├── Cursos
    │   └── LEEME.txt
    ├── Doc.txt
    ├── Hola.txt
    ├── LICENSE.txt
    └── bash-exercises

5 directories, 4 files
```

Explicación:

Muestra el árbol de carpetas y archivos con un formato visual muy claro.

Ideal para documentación y revisión de proyectos.

### **10. Busca un archivo concreto en el directorio actual utilizando find.**

Comando:

```bash
find . -name "LEEME.txt"
```

Salida:

```bash
./carpeta-1/Cursos/LEEME.txt
```

Explicación:

`find` permite buscar archivos por nombre, tipo o patrón dentro del sistema.
El `.` indica que la búsqueda inicia en el directorio actual.