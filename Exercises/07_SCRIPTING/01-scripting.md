# SCRIPTING

# Ejercicios

---

### 1. Crea un script que imprima en pantalla: Hola mundo desde Bash.

Comandos:

- Primero creamos el archivo con:
    
    ```bash
    touch 01-hola-mundo.sh
    ```
    
- Abrimos el archivo y editamos con:
    
    ```bash
    nano 01-hola-mundo.sh
    ```
    
- Creamos el contenido del script:
    
    ```bash
    #!/bin/bash
    
    echo "Hola mundo desde Bash"
    ```
    
- Ejecución del script:
    
    ```bash
    ./01-hola-mundo.sh
    ```
    

Salida:

```bash
Hola mundo desde Bash
```

Explicación: 

| Línea | Significado |
| --- | --- |
| `#!/bin/bash` | Shebang: indica que el script debe ejecutarse con Bash. |
| `echo "Hola mundo desde Bash"` | Imprime en pantalla un mensaje. |

Este es el clásico primer script, con él validamos que Bash está funcionando y que sabemos ejecutar archivos desde la terminal.

<aside>
💡

Nota:

</aside>

```bash
./01-hola-mundo.sh
-bash: ./01-hola-mundo.sh: Permission denied
```

Comando: 

```bash
Comando:
chmod +x ./01-hola-mundo.sh
```

> El script no se ejecutaba debido a falta de permisos. Con `chmod +x` habilitamos el permiso de ejecución y ahora Bash puede correr el archivo sin restricciones.
> 

### 2. Crea un script que muestre la fecha y el directorio actual.

Comandos:

- Abrimos el archivo y editamos:
    
    ```bash
    nano 02-info-sistema.sh
    ```
    
- Contenido del script:
    
    ```bash
    #!/bin/bash
    
    echo "Fecha actual:"
    date
    
    echo "Tu directorio actual es: $(pwd)"
    ```
    
- Ejecución:
    
    ```bash
    ./02-info-sistema.sh
    ```
    

Salida: 

```bash
Fecha actual:
Sat Nov 29 10:26:52 CST 2025
Tu directorio actual es: /home/natx/Bash-course/Scripts
```

Explicación:

| Línea | Explicación |
| --- | --- |
| `#!/bin/bash` | Shebang → indica que el script será interpretado por Bash. |
| `echo "Fecha actual:"` | Imprime un texto descriptivo. |
| `date` | Muestra la fecha y hora del sistema. |
| `$(pwd)` | Ejecuta el comando dentro del echo y devuelve la ruta actual. |

### 3. Crea un script que guarde tu nombre en una variable y lo muestre en pantalla.

Comandos: 

- Abrimos y editamos el archivo:
    
    ```bash
    nano 03-variable-nombre.sh
    ```
    
- Contenido del script:
    
    ```bash
    #!/bin/bash
    
    name="Natividad"
    
    echo "Mi nombre es: $name"
    ```
    
- Ejecución:
    
    ```bash
    ./03-variable-nombre.sh
    ```
    

Salida:

```bash
Mi nombre es: Natividad
```

Explicación: 

| Elemento | Significado |
| --- | --- |
| `name="Natividad"` | Se crea una variable llamada `name` y se asigna un valor. |
| `$name` | Se llama el contenido de la variable para mostrarlo. |
| `echo` | Imprime texto en pantalla. |

En este ejercicio demuestra cómo almacenamos información dentro de variables y cómo las imprimimos usando `echo`.

### 4. Crea un script que declare dos variables numéricas, las sume, reste y multiplique, mostrando el resultado de cada operación.

Comandos:

- Abrimos y editamos el archivo:
    
    ```bash
    nano 04-operaciones-basicas.sh
    ```
    
- Contenido del script:
    
    ```bash
    #!/bin/bash
    
    a=10
    b=5
    
    echo "Suma: $((a + b))"
    echo "Resta: $((a - b))"
    echo "Multiplicación: $((a * b))"
    ```
    
- Ejecución:
    
    ```bash
    ./04-operaciones-basicas.sh
    ```
    

Salida:

```bash
Suma: 15
Resta: 5
Multiplicación: 50
```

Explicación:

| Elemento | Significado |
| --- | --- |
| `a=10` / `b=5` | Variables numéricas almacenadas sin `$` al declarar. |
| `$(( ))` | Sintaxis para realizar operaciones aritméticas en Bash. |
| `echo` | Muestra cada resultado en pantalla. |

### 5. Crea un script que pida tu nombre con read y lo muestre.

Comando:

- Abrimos y editamos el archivo:
    
    ```bash
    nano 05-read-nombre.sh
    ```
    
- Contenido del script:
    
    ```bash
    #!/bin/bash
    
    read -p "Ingresa tu nombre: " name  
    echo "Hola $name, bienvenido al mundo de Bash!"
    
    ```
    
- Ejecución:
    
    ```bash
    ./05-read-nombre.sh
    ```
    

Salida: 

```bash
Ingresa tu nombre: naty
Hola naty, bienvenido al mundo de Bash!
```

Explicación:

En este ejercicio se utilizó el comando **`read`** para capturar texto ingresado por el usuario desde la terminal.

- `read` : permite recibir datos del teclado.
- `p` : muestra un mensaje en pantalla antes de leer.
- `name` : variable donde se almacena lo ingresado.

Una vez capturado el valor, se imprime usando `echo` para mostrarlo en pantalla.

- *Este script demuestra entrada de datos interactiva desde Bash.*

### 6. Crea un script que pida dos números al usuario y muestre su suma.

Comandos:

- Abrimos y editamos el archivo:
    
    ```bash
    nano 06-suma-numeros.sh
    ```
    
- Contenido del script:
    
    ```bash
    #!/bin/bash
    
    read -p "Ingresa el primer número: " num1
    read -p "Ingresa el segundo número: " num2
    
    suma=$((num1 + num2))
    
    echo "La suma de $num1 + $num2 es: $suma"
    ```
    
- Ejecución:
    
    ```bash
    ./06-suma-numeros.sh
    ```
    

Salida:

```bash
Ingresa el primer número: 9
Ingresa el segundo número: 5
La suma de 9 + 5 es: 14
```

Explicación:

Este script solicita dos números al usuario utilizando `read`.

- `num1` y `num2` almacenan los valores ingresados.
- Para realizar operaciones aritméticas se usa `(( ))`.
- El resultado se guarda en la variable `suma` y luego se muestra con `echo`.

### 7. Crea un script con tres argumentos que muestre el primero y el tercero.

Comandos:

- Abrimos y editamos el archivo:
    
    ```bash
    nano 07-args.sh
    ```
    
- Contenido del script:
    
    ```bash
    #!/bin/bash
    
    echo "Primer argumento: $1"
    echo "Tercer argumento: $3"
    ```
    
- Ejecución:
    
    ```bash
    ./07-args.sh 4 5 6
    ```
    

Salida:

```bash
Primer argumento: 4
Tercer argumento: 6
```

### Explicación:

- Este script utiliza **parámetros posicionales**, donde `$1` es el primer argumento, `$2` el segundo, `$3` el tercero, etc.
- El programa imprime únicamente el **primer** y **tercer argumento** proporcionado al ejecutar.

### 8. Crea un script con argumentos que muestre el número total.

Comandos:

- Abrimos y editamos el archivo:
    
    ```bash
    nano 08-total-argumentos.sh
    ```
    
- Contenido del script:
    
    ```bash
    #!/bin/bash
    
    echo "Total de argumentos recibidos: $#"
    ```
    
- Ejecución:
    
    ```bash
    ./08-total-argumentos.sh 1 4 8
    ```
    

Salida:

```bash
Total de argumentos recibidos: 3
```

### Explicación:

`$#` representa el **número total de argumentos pasados al script**.

No importa cuántos sean, el script mostrará la cantidad.

### 9. Crea un script que reciba dos números como argumentos y muestre su suma, resta, multiplicación y división.

Comandos:

- Abrimos y editamos el archivo:
    
    ```bash
    nano 09-operaciones-args.sh
    ```
    
- Contenido del script:
    
    ```bash
    #!/bin/bash
    
    n1=$1
    n2=$2
    
    echo "Suma: $((n1+n2))"
    echo "Resta: $((n1-n2))"
    echo "Multiplicación: $((n1*n2))"
    echo "División: $((n1/n2))"
    ```
    
- Ejecución:
    
    ```bash
    ./09-operaciones-args.sh 9 6
    ```
    

Salida:

```bash
Suma: 15
Resta: 3
Multiplicación: 54
División: 1
```

### Explicación:

- Se asignan los argumentos `$1` y `$2` a variables.
- Se utilizan operaciones aritméticas con `$(())`.

### 10. Crea un script que cree un archivo de texto y guarde tu nombre en su interior.

Comandos:

- Abrimos y editamos el archivo:
    
    ```bash
    nano 10-crear-archivo.sh
    ```
    
- Contenido del script:
    
    ```bash
    #!/bin/bash
    
    archivo="mi_nombre.txt"
    echo "Tu archivo ha sido creado: $archivo"
    echo "Aquí se almacena mi nombre: Natividad" > $archivo
    ```
    
- Ejecución:
    
    ```bash
    ./10-crear-archivo.sh
    ls
    cat mi_nombre.txt
    ```
    

Salida:

```bash
Aquí se almacena mi nombre: Natividad
```

### Explicación:

- Se declara el nombre del archivo.
- `>` crea el archivo y guarda el texto dentro.
- Si ya existía, lo sobrescribe (puedes usar `>>` para agregar sin borrar).