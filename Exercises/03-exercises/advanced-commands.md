# COMANDOS AVANZADOS (EJERCICIOS)

# Ejercicios

---

### **1. Muestra todo el contenido de un archivo.**

Comando:

```bash
cat Hola.txt
```

Salida:

```bash
HOLA LINUX O UNIX
HOLA UBUTUN XD
```

Explicación:
El comando `cat` permite **mostrar el contenido de un archivo directamente en la terminal**.
Funciona para archivos pequeños o medianos, ya que imprime todo su contenido de una sola vez.

### **2. Muestra el contenido paginado de un archivo.**

Comando:

```bash
less LICENSE.txt
```

Salida:

(El archivo se abre en modo visor)

```bash
HOLA LINUX O UNIX
HOLA UBUTUN XD

hola estoy aprediendo bash
es interesante, me gusta y quiero seguir mejorando.
~
```

Cuando se abre `less`, aparecen controles como:

```bash
SPACE  = bajar una página
↑/↓    = navegar línea por línea
q     = salir y volver a la terminal
```

Explicación:

`less` es un visor interactivo que permite **leer archivos grandes de forma paginada**.

A diferencia de `cat`, que imprime todo el contenido completo, `less` solo muestra una parte del archivo y permite desplazarlo manualmente.

Es útil cuando:

- El archivo es extenso (más de 50+ líneas)
- Quieres leer el texto con calma
- Necesitas buscar dentro del documento

### **3. Muestra las 15 primeras líneas de un archivo.**

Comando:

```bash
head -n 15 Hola.txt
```

Salida:

```bash
¡HOLA!

Mi nombre es Nat, y hoy estoy practicando cómo crear archivos desde la terminal.
Estoy usando comandos básicos para escribir, leer y editar contenido.
Cada día aprendo algo nuevo y eso me motiva a seguir adelante.
Linux es interesante porque te da el control total del sistema.
Con solo unas líneas de comandos puedes hacer grandes cosas.

A veces puede parecer complicado al inicio.
Pero con práctica y constancia todo se vuelve más fácil.
Yo creo que la mejor forma de aprender es equivocándose muchas veces.
Los errores enseñan más que los aciertos rápidos.
Además, la satisfacción de solucionar un problema es increíble.

También estoy explorando cómo funciona Bash.
```

Explicación:

`head` permite ver solo el **inicio del archivo**, útil cuando quieres una vista rápida del contenido sin leer todo.

Beneficioso para:

- Revisar encabezados o títulos
- Confirmar estructura de un archivo
- Validar el contenido sin abrirlo completo

### **4. Muestra las 15 últimas líneas de un archivo.**

Comando:

```bash
tail -n 15 Hola.txt
```

Salida:

```bash
A veces puede parecer complicado al inicio.
Pero con práctica y constancia todo se vuelve más fácil.
Yo creo que la mejor forma de aprender es equivocándose muchas veces.
Los errores enseñan más que los aciertos rápidos.
Además, la satisfacción de solucionar un problema es increíble.

También estoy explorando cómo funciona Bash.
Me gusta experimentar con scripts y automatizaciones simples.
Por ejemplo, puedo crear carpetas, mover archivos o generar reportes.
Todo esto sin necesidad de usar ventanas o el mouse.
La terminal se está convirtiendo en mi herramienta favorita.

Espero que en unas semanas pueda crear programas más avanzados.
Tal vez incluso automatizar rutinas completas del sistema.
Por ahora sigo aprendiendo, practicando y mejorando día a día.
```

Explicación:

`tail` permite ver la parte final del archivo, ideal cuando los datos más recientes se escriben al final.

Muy útil para:

- Vigilar logs del sistema
- Revisar la información añadida recientemente
- Comprobar cambios recientes

### **5. Busca una palabra en un archivo.**

Comando:

```bash
grep "comandos" Hola.txt
```

Salida:

```bash
Estoy usando comandos básicos para escribir, leer y editar contenido.
Con solo unas líneas de comandos puedes hacer grandes cosas.
```

Explicación:

`grep` permite buscar texto dentro de archivos. 

Es útil cuando necesitas localizar información específica sin leer todo manualmente.

Opciones importantes:

| Opción | Función |
| --- | --- |
| `-i` | Ignorar mayúsculas y minúsculas |
| `-n` | Mostrar número de línea donde aparece |
| `-r` | Buscar de forma recursiva en directorios |

Ejemplo recomendado para documentación más completa:

```bash
grep -in "error" system.log
```

### **6. Cuenta las líneas de un archivo.**

Comando:

```bash
wc -l Hola.txt
```

Salida:

```bash
22 Hola.txt
```

Explicación:

`wc` significa *word count* y permite contar diferentes elementos del archivo.

| Parámetro | Qué cuenta |
| --- | --- |
| `-l` | Líneas |
| `-w` | Palabras |
| `-c` | Bytes |

Ejemplo más completo:

```bash
wc -l -w -c Hola.txt
```

Salida: 

```bash
22  175 1154 Hola.txt
```

Esto muestra líneas, palabras y bytes en una sola ejecución.

### **7. Redirige una salida y guárdala en un archivo.**

Comando:

```bash
echo "Hola mundo" > ejemplo.txt
```

Explicación:

El símbolo `>` redirige la salida estándar de un comando hacia un archivo.

- Si el archivo **no existe**, se crea.
- Si **ya existe**, su contenido se reemplaza por el nuevo.

Si luego quieres ver lo que tiene:

```bash
cat ejemplo.txt
```

Salida: 

```bash
Hola mundo
```

### **8. Añade una nueva salida al archivo anterior.**

Comando:

```bash
echo "Adiós" >> ejemplo.txt
```

Explicación:

- `echo "Adiós"` genera una salida en consola.
- `>>` **no reemplaza** el contenido, sino que **lo añade al final del archivo**.
- Se agrega una nueva línea al archivo `ejemplo.txt` sin borrar lo que ya tenía.

### **9. Encadena 3 comandos.**

Comando:

```bash
cat Hola.txt | grep "más" | wc -w
```

Salida:

```bash
37
```

Explicación:

| Comando | Función |
| --- | --- |
| `cat Hola.txt` | Muestra el contenido del archivo. |
| `grep "más"` | Filtra únicamente las líneas que contienen la palabra **más**. |
| `wc -w` | Cuenta cuántas palabras tiene el texto filtrado. |

### **10. Crea una variable local y muéstrala.**

Comando:

```bash
usuario="Nat"
curso="bash-shell"
echo "Hola $usuario, estás aprendiendo $curso"
```

Salida:

```bash
Hola Nat, estás aprendiendo bash-shell
```

Explicación:

Para crear una variable local basta con asignarle un valor:

```bash
usuario="Nat"
```

> No lleva espacios antes o después del signo igual.
> 

Para mostrar su contenido usamos `echo` junto al nombre de la variable con `$`:

```bash
echo $usuario
```

- La variable existe solo en la sesión actual del terminal (por eso es **local**). Si cierras la terminal, esta variable ya no estará definida.