# ADMINISTRACIÓN DEL SISTEMA (EJECICIOS)

# Ejercicios

---

### 1. Crea un archivo y visualiza sus permisos.

Comando:

```bash
touch permisos.txt
```

Comando para ver permisos:

```bash
ls -l permisos.txt
```

Salida:

```bash
-rw-r--r-- 1 natx natx 0 Nov 27 19:11 permisos.txt
```

Explicación:

- `touch permisos.txt` → Crea un archivo vacío llamado `permisos.txt`.
- `ls -l` → Muestra los permisos con detalle.
- Los permisos se interpretan así:
    - `-` Tipo de archivo
    - `rw` Lectura y escritura  para el propietario
    - `r--` Lectura y escritura para el grupo
    - `r--` Lectura  para otros

### 2. Otorga permisos de ejecución sólo al propietario en modo simbólico.

Comando:

```bash
chmod u+x permisos.txt
```

Ver permisos luego del cambio:

```bash
ls -l permisos.txt
```

Salida:

```bash
-rwxr--r-- 1 natx natx 0 Nov 27 19:11 permisos.txt
```

### **Explicación:**

- `u` = usuario/propietario
- `+x` = añade permiso de ejecución
- Ahora el propietario puede **ejecutar** el archivo, el grupo y otros mantienen sus permisos anteriores.

### 3. Cambia sus permisos a 644.

Comando:

```bash
chmod 644 permisos.txt
```

Ver permisos:

```bash
ls -l permisos.txt
```

Salida: 

```bash
-rw-r--r-- 1 natx natx 0 Nov 27 19:11 permisos.txt
```

### **Explicación:**

El valor numérico **644** significa:

| Actor | Permisos | Valor |
| --- | --- | --- |
| **u (usuario / propietario)** | lectura + escritura → `rw-` | **6** |
| **g (grupo)** | solo lectura → `r--` | **4** |
| **o (otros)** | solo lectura → `r--` | **4** |

### 4. Elimina los permisos para el grupo.

Comando:

```bash
chmod g-r permisos.txt
```

Ver permisos:

```bash
ls -l permisos.txt
```

Salida:

```bash
-rw----r-- 1 natx natx 0 Nov 27 19:11 permisos.tx
```

### **Explicación:**

- `chmod g-r permisos.txt`
    - `g` = grupo
    - `r` = quitar permiso de lectura

### 5. Haz que sólo pueda ejecutarse por el propietario.

Comando:

```bash
chmod 700 permisos.txt
```

Ver permisos:

```bash
ls -l permisos.txt
```

Salida:

```bash
-rwx------ 1 natx natx 0 Nov 27 19:11 permisos.txt
```

### Explicación:

`700` significa:

| Actor | Permisos | Valor |
| --- | --- | --- |
| **Usuario (u)** | lectura + escritura + ejecución → `rwx` | **7** |
| **Grupo (g)** | sin permisos → `---` | **0** |
| **Otros (o)** | sin permisos → `---` | **0** |

<aside>
💡

Solo el propietario puede abrir, modificar o ejecutar el archivo.

</aside>

<aside>
💡

Ningún otro usuario puede acceder.

</aside>

Alternativa simbólica:

```bash
chmod u=rwx,g=---,o=--- permisos.txt
```

### 6. Crea una carpeta y dale permisos para que sólo el usuario pueda acceder.

Comandos:

- Crear carpeta:

```bash
mkdir privada
```

- Dar permisos exclusivos:

```bash
chmod 700 privada
```

Ver permisos:

```bash
ls -ld privada
```

Salida:

```bash
drwx------ 2 natx natx 4096 Nov 28 10:23 privada
```

### Explicación:

Cuando aplicamos:

```bash
chmod 700 privada
```

Estamos diciendo:

- Solo el **propietario** puede **leer**, **escribir** y **entrar** a la carpeta.
- **Grupo** y **otros usuarios** no pueden ver su contenido ni entrar.

Resultado final:

```bash
drwx------
```

- Acceso totalmente privado.
- Útil para carpetas con información sensible.

### 7. Cámbiale el propietario a otro usuario de tu sistema (si existe y tienes permisos).

Comandos:

- Ver propietario actual:

```bash
ls -l permisos.txt
```

- Salida:

```bash
-rwx------ 1 natx natx 0 Nov 27 19:11 permisos.txt
```

- Cambiar propietario a otro usuario:

```bash
sudo chown testuser permisos.txt
```

- Verificar cambio:

```bash
ls -l permisos.txt
```

### Explicación

`chown` significa **change owner** (cambiar dueño).

Si tienes un usuario alterno llamado *testuser*, por ejemplo:

Resultado esperado:

```bash
-rwx------ 1 testuser natx 0 Nov 27 19:11 permisos.txt
```

Esto indica que ahora **el archivo pertenece a otro usuario** y tú ya no tienes control total si no tienes permisos sobre él.

<aside>
💡

Puedes crear usuarios en WSL con:

</aside>

```bash
sudo adduser testuser
```

### 8. Consulta la máscara de permisos actual y calcula qué permisos por defecto tendrán los nuevos archivos.

Comandos:

- Ver máscara actual:

```bash
umask
```

- Salida:

```bash
0022
```

Interpretación:

| Tipo | Permiso base | Se resta umask | Resultado final |
| --- | --- | --- | --- |
| Archivos nuevos | 666 (rw-rw-rw-) | − 022 | **644 → rw-r--r--** |
| Carpetas nuevas | 777 (rwxrwxrwx) | − 022 | **755 → rwxr-xr-x** |

Por eso, con `umask 022`:

| Objetivo | Permiso asignado |
| --- | --- |
| Nuevo archivo | **644 — rw-r--r--** |
| Nueva carpeta | **755 — rwxr-xr-x** |

Significa:

- El usuario puede leer y escribir.
- Grupo y otros solo pueden leer.
- No son ejecutables por defecto (a menos que se modifique manualmente).

### 9. Cambia la máscara, crea un archivo y consulta los permisos por defecto del archivo.

Comandos:

- Cambiar la máscara:

```bash
umask 077
```

- Crear un  archivo:

```bash
touch archivo_umask.txt
```

- Verificar los permisos:

```bash
ls -l archivo_umask.txt
```

Salida:

```bash
-rw------- 1 natx natx 0 Nov 28 11:49 archivo_umask.txt
```

**Explicación:**

La máscara de permisos (umask) define qué permisos se **restan** a los archivos creados.

| Valor base de permisos | umask aplicada | Permiso resultante |
| --- | --- | --- |
| Archivos → 666 (rw-rw-rw-) | − 077 | **600 → rw-------** |

Con `umask 077` el archivo queda accesible **solamente para el propietario**.

Ni el grupo ni otros usuarios podrán leerlo o modificarlo.

### 10. Utiliza un comando como superusuario.

Comando:

```bash
sudo apt update
```

**Salida:**

```bash
[sudo] password for natx: 
Hit:1 http://archive.ubuntu.com/ubuntu noble InRelease
Get:2 http://archive.ubuntu.com/ubuntu noble-updates InRelease [126 kB]
Hit:3 http://security.ubuntu.com/ubuntu noble-security InRelease
Hit:4 http://archive.ubuntu.com/ubuntu noble-backports InRelease
Fetched 126 kB in 1s (135 kB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
3 packages can be upgraded. Run 'apt list --upgradable' to see them.
```

**Explicación:**

`sudo` significa **Super User DO**, permite ejecutar comandos con privilegios elevados.

Esto se usa para acciones que afectan el sistema, como:

- instalar programas
- modificar permisos globales
- cambiar configuraciones internas
- administrar usuarios y paquetes

<aside>
💡

Requiere contraseña porque es una acción con riesgo si no se usa correctamente.

</aside>