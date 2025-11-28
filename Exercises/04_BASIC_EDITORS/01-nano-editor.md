# NANO

## Ejercicios

---

### **1. Crea un archivo llamado nota.txt y escribe tres líneas de texto.**

Comando:

```bash
nano nota.txt
```

Dentro de nano:

```bash
Esta es mi primera nota.
Estoy aprendiendo Bash y Nano.
Este archivo tiene tres líneas.
```

Para **guardar y salir**:

| Acción | Tecla |
| --- | --- |
| Guardar cambios | `Ctrl + O` |
| Confirmar el nombre | `Enter` |
| Salir de nano | `Ctrl + X` |

Salida esperada (al listar archivos):

```bash
ls
Cursos  Hola.txt  LICENSE.txt  Text.txt  bash-exercises  ejemplo.txt  nota.txt
```

**Explicación:**

Se utiliza `nano` para crear y editar archivos de forma interactiva.

Al escribir dentro del archivo y guardar, Nano crea el archivo `nota.txt` con las 3 líneas ingresadas.

### **2. Abre nota.txt, añade una línea al final y guarda los cambios.**

Comando:

```bash
nano nota.txt
```

Agrega una nueva línea al final:

```bash
-------------------------------------
Nueva línea añadida usando Nano.
```

Salida al mostrar el contenido:

```bash
cat nota.txt
Esta es mi primera nota.
Estoy aprendiendo Bash y Nano.
Este archivo tiene tres líneas.
-------------------------------------
Nueva línea añadida usando Nano.
```

**Explicación:** 

Reabrimos el archivo con `nano` para modificarlo y agregamos información nueva.

El comando permite editarlo directamente desde la terminal.

### **3. Abre un archivo nuevo llamado recordatorio.txt, escribe algo y sal sin guardar.**

Comando:

```bash
nano recordatorio.txt
```

Ejemplo:

```bash
Esto es un recordatorio temporal.
```

Para **salir sin guardar**:

```bash
Ctrl + X → N
```

Salida esperada:

```bash
Cursos  Hola.txt  LICENSE.txt  Text.txt  bash-exercises  ejemplo.txt  nota.txt
```

**Explicación:**

Aquí Nano no crea el archivo si no se guarda.

Si salimos con `Ctrl + X` y elegimos `N` (No), el archivo no se genera.

### **4. Busca una palabra específica en un archivo existente.**

Comando:

```bash
nano nota.txt
```

Luego dentro de Nano presiona:

```bash
Ctrl + W
```

Escribe la palabra a buscar:

```bash
aprendiendo
```

**Salida:**

Nano resaltará la coincidencia y te llevará a la línea donde aparece.

**Explicación:**

La combinación `Ctrl + W` permite buscar texto dentro del archivo sin cerrarlo.

Esto es útil para encontrar frases o palabras rápidamente.

### **5. Corta una línea y pégala en otra parte.**

Comando:

```bash
nano nota.txt
```

Dentro de Nano:

| Acción | Tecla |
| --- | --- |
| Cortar una línea | `Ctrl + K` |
| Pegar la línea | `Ctrl + U` |

Ejemplo del flujo:

1. Posicionarse sobre la línea que quieres cortar.
2. Presionar `Ctrl + K` → la línea desaparece (queda en portapapeles interno).
3. Moverse con flechas al lugar deseado.
4. Pegar con `Ctrl + U`.

**Explicación:**

Nano permite manipular texto con atajos simples.

`Ctrl + K` corta una línea completa y la almacena temporalmente, mientras que `Ctrl + U` la pega donde se necesite.