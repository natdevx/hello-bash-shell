# VIM

## Ejercicios

---

### **1. Crea apuntes.txt, entra en modo inserción y escribe una frase.**

Comando:

```bash
vim apuntes.txt
```

Dentro de Vim presiona la tecla:

```bash
i
```

Esto te coloca en *modo inserción*. Escribe algo, por ejemplo:

```bash
Vim es un editor poderoso y rápido para programadores.
```

**Explicación:**

Vim inicia en **modo normal**, donde no se escribe directamente.

`i` cambia al **modo inserción**, permitiendo empezar a escribir texto dentro del archivo.

### **2. Mueve el cursor sin usar las flechas.**

Dentro de Vim (modo normal, presiona `Esc` si no estás seguro):

| Movimiento | Tecla |
| --- | --- |
| Izquierda | `h` |
| Abajo | `j` |
| Arriba | `k` |
| Derecha | `l` |

**Explicación:**

Vim está diseñado para usarse sin depender del mouse ni de teclas de flechas.

Esto hace más rápida la edición una vez dominado.

### **3. Borra una línea completa y deshaz el cambio.**

Comando:

- Para borrar una línea:

```bash
dd
```

- Para deshacer el cambio:

```bash
u
```

**Explicación:**

- `dd` elimina la línea donde esté el cursor.
- `u` deshace la última acción (similar a *Ctrl + Z* en otros editores).

### 4. Copia una línea y pégala debajo.

Comando:

- Copiar

```bash
yy
```

- Pegar debajo:

```bash
p
```

**Explicación:**

- `yy` copia la línea actual al portapapeles interno de Vim.
- `p` pega la copia justo debajo del cursor.

### 5. Guarda los cambios y sal.

Comandos:

Cuando hayas terminado de editar, presiona `Esc` para asegurarte de estar en modo normal y escribe:

```
:wq
```

ó

```
:x

```

ó

```
ZZ   # (mayúsculas) también guarda y cierra

```

Si quieres **salir sin guardar**:

```
:q!

```

**Explicación:**

En Vim los comandos inician con `:`.

- `:w` escribe/guarda.
- `:q` cierra.
- `:wq` hace ambas cosas.

Comprobar que se haya guardado correctamente:

```bash
Cursos  Hola.txt  LICENSE.txt  Text.txt  apuntes.txt  bash-exercises  ejemplo.txt  nota.txt
```