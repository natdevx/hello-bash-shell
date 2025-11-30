# LÓGICA

# Ejercicios

---

### 1. Crea un script que pida un número y muestre si es positivo, negativo o cero usando if, elif y else.

Comandos: 

- Crear y editar el archivo:
    
    ```bash
    nano 01-numero-positivo-negativo.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    
    read -p "Ingresa un número: " num
    
    if [ $num -gt 0 ]; then
        echo "El número es positivo."
    elif [ $num -lt 0 ]; then
        echo "El número es negativo."
    else
        echo "El número es cero."
    fi
    ```
    
- Ejecución:
    
    ```bash
    ./01-numero-positivo-negativo.sh
    ```
    

Salida:

```bash
Ingresa un número: -5
El número es negativo.
```

Explicación:

| Componente | Descripción |
| --- | --- |
| `read -p` | Muestra un mensaje y recibe el número por teclado. |
| `if [ $num -gt 0 ]` | Comprueba si el número es mayor que cero. |
| `elif` | Se ejecuta si la primera condición no se cumple. |
| `else` | Se ejecuta cuando ninguna otra condición es verdadera. |

### 2. Pide al usuario dos números y muestra cuál es mayor o si son iguales.

Comandos: 

- Crear y editar el archivo:
    
    ```bash
    02-numero-mayor-o-igual.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    
    read -p "Ingresa el primer número: " n1
    read -p "Ingresa el segundo número: " n2
    
    if [ $n1 -gt $n2 ]; then
        echo "$n1 es mayor que $n2"
    elif [ $n2 -gt $n1 ]; then
        echo "$n2 es mayor que $n1"
    else
        echo "Ambos números son iguales."
    fi
    ```
    
- Ejecución:
    
    ```bash
    ./02-numero-mayor-o-igual.sh
    ```
    

Salida:

```bash
Ingresa el primer número: 15
Ingresa el segundo número: -15
15 es mayor que -15
```

Explicación:

| Lógica | Significado |
| --- | --- |
| `-gt` | Greater Than → mayor que |
| `-lt` | Less Than → menor que (no aplicado aquí, pero existe) |
| Comparación doble | Se evalúan ambas posibilidades antes del else |
| `else` | Caso final → si no es mayor ni menor, son iguales. |

### 3. Crea un script que muestre un menú con tres opciones y ejecute la opción correspondiente según la elección del usuario.

Comandos: 

- Crear y editar el archivo:
    
    ```bash
    nano 03-menu-opciones.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    
    echo "===== MENÚ ====="
    echo "1) Saludar"
    echo "2) Mostrar fecha"
    echo "3) Mostrar archivos del directorio actual"
    echo "================"
    read -p "Elige una opción: " opcion
    
    case $opcion in
        1) echo "Hola! espero que estés aprendiendo mucho Bash" ;;
        2) date ;;
        3) ls ;;
        *) echo "Opción no válida. Intenta nuevamente." ;;
    esac
    ```
    
- Ejecución:
    
    ```bash
    ./03-menu-opciones.sh
    ```
    

Salida:

```bash
===== MENÚ =====
1) Saludar
2) Mostrar fecha
3) Mostrar archivos del directorio actual
================
Elige una opción: 3
01-numero-positivo-negativo.sh	02-numero-mayor-o-igual.sh  03-menu-opciones.sh
```

Explicación:

| Elemento | Función |
| --- | --- |
| `case` | Evalúa múltiples opciones similares a un menú |
| `1)` `2)` `3)` | Cada bloque se ejecuta dependiendo del número ingresado |
| `*)` | Captura cualquier opción no contemplada. |

### 4. Muestra todos los números del 1 al 10 usando un bucle for.

Comandos: 

- Crear y editar el archivo:
    
    ```bash
    nano 04-for-1-al-10.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    
    for num in {1..10}; do
        echo "Número: $num"
    done
    ```
    
- Ejecución:
    
    ```bash
    ./04-for-1-al-10.sh
    ```
    

Salida:

```bash
Número: 1
Número: 2
Número: 3
Número: 4
Número: 5
Número: 6
Número: 7
Número: 8
Número: 9
Número: 10
```

Explicación:

| Elemento | Descripción |
| --- | --- |
| `for num in {1..10}` | El bucle recorre números del 1 al 10 automáticamente |
| `do ... done` | Bloque de instrucciones que se ejecutan en cada ciclo |
| `$num` | Variable que cambia en cada iteración. |

### 5. Crea un script que pida números al usuario hasta que introduzca el número 0. Al final, muestra cuántos números ha introducido en total.

Comandos: 

- Crear y editar el archivo:
    
    ```bash
    nano 05-contador-numeros.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    
    contador=0
    numero=1  # Valor inicial para entrar al while
    
    while [ $numero -ne 0 ]; do
        read -p "Introduce un número (0 para salir): " numero
        if [ $numero -ne 0 ]; then
            contador=$((contador + 1))
        fi
    done
    
    echo "Ingresaste un total de $contador números."
    ```
    
- Ejecución:
    
    ```bash
    ./05-contador-numeros.sh
    ```
    

Salida:

```bash
Introduce un número (0 para salir): 5
Introduce un número (0 para salir): 8
Introduce un número (0 para salir): 8
Introduce un número (0 para salir): 9
Introduce un número (0 para salir): 9
Introduce un número (0 para salir): 0
Ingresaste un total de 5 números.
```

Explicación:

| Elemento | Función |
| --- | --- |
| `contador=0` | Variable donde se lleva el registro de números ingresados |
| `while [ $numero -ne 0 ]` | El ciclo continúa mientras el número **NO sea 0** |
| `read -p` | Pide al usuario un dato |
| `contador=$((contador + 1))` | Incrementa el contador |
| `-ne` | "Not equal" → distinto de 0 |

### 6. Haz un script que muestre los números del 1 al 10, saltando el 5 y deteniéndose en el 8.

Comandos: 

- Crear y editar el archivo:
    
    ```bash
    nano 06-bucle-condicional.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    
    for num in {1..10}; do
    
        if [ $num -eq 5 ]; then
            continue   # Salta el número 5 y sigue con el siguiente
        fi
    
        if [ $num -eq 8 ]; then
            break      # Detiene el bucle al llegar al 8
        fi
    
        echo "Número: $num"
    
    done
    ```
    
- Ejecución:
    
    ```bash
    ./06-bucle-condicional.sh
    ```
    

Salida:

```bash
Número: 1
Número: 2
Número: 3
Número: 4
Número: 6
Número: 7
```

Explicación:

| Elemento | Función |
| --- | --- |
| `for num in {1..10}` | Recorre los números del 1 al 10 |
| `if [ $num -eq 5 ]; then continue` | Se salta el 5, no lo imprime |
| `if [ $num -eq 8 ]; then break` | Detiene la ejecución al llegar a 8 |
| `echo` | Muestra los valores en pantalla. |

### 7. Crea una función saludar que reciba un nombre como argumento y muestre: Hola , bienvenido al script.

Comandos: 

- Crear y editar el archivo:
    
    ```bash
    nano 07-funcion-saludo.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    
    saludar() {
        nombre=$1  # Primer argumento recibido por la función
        echo "Hola $nombre, bienvenido al script."
    }
    
    saludar "Nat"    # Puedes cambiar el nombre para probar
    ```
    
- Ejecución:
    
    ```bash
    ./07-funcion-saludo.sh
    ```
    

Salida:

```bash
Hola Nat, bienvenido al script.
```

Explicación:

| Elemento | Descripción |
| --- | --- |
| `saludar() { ... }` | Define una función |
| `$1` | Primer argumento recibido por la función |
| `echo` | Muestra el mensaje en pantalla |
| `saludar "Nat"` | Llamada a la función con un nombre |

### 8. Crea una función que reciba dos números, calcule su suma y la devuelva usando return. Muestra el resultado en el script principal.

Comandos: 

- Crear y editar el archivo:
    
    ```bash
    nano 08-funcion-suma.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    
    sumar() {
        resultado=$(( $1 + $2 ))   # Suma los argumentos
        echo $resultado            # Se imprime para capturar el valor
    }
    
    valor=$(sumar 6 8)
    echo "La suma es: $valor"
    ```
    
- Ejecución:
    
    ```bash
    ./08-funcion-suma.sh
    ```
    

Salida:

```bash
La suma es: 14
```

Explicación:

| Elemento | Función |
| --- | --- |
| `$1` y `$2` | Primer y segundo argumento |
| `$(( ))` | Permite realizar operaciones matemáticas |
| `valor=$(sumar 6 8)` | Guarda el resultado de la función |
| `echo "La suma es: $valor"` | Muestra el resultado final. |

### 9. Intenta copiar un archivo que no exista y muestra un mensaje de error si el comando falla, usando $? o ||.

Comandos: 

- Crear y editar el archivo:
    
    ```bash
    nano 09-manejo-errores.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    
    cp archivo.txt destino/ 2>/dev/null
    
    if [ $? -ne 0 ]; then
        echo "Error: El archivo no existe o no se pudo copiar."
    fi
    ```
    
- Ejecución:
    
    ```bash
    ./09-manejo-errores.sh
    ```
    

Salida:

```bash
Error: El archivo no existe o no se pudo copiar.
```

Explicación:

| Elemento | Significa |
| --- | --- |
| `$?` | Código de salida del comando anterior |
| `0` | Éxito |
| `!= 0` o `-ne 0` | Hubo error |

### 10. Crea un script con un comentario inicial con autor, fecha, descripción y un bucle for que liste todos los archivos .sh en el directorio actual.

Comandos: 

- Crear y editar el archivo:
    
    ```bash
    nano 10-listar-scripts.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    # Autor: Nat
    # Fecha: 2025-11 
    # Descripción: Lista todos los archivos .sh del directorio actual
    
    echo "Scripts encontrados:"
    for file in *.sh; do
        echo "- $file"
    done
    ```
    
- Ejecución:
    
    ```bash
    ./10-listar-scripts.sh
    ```
    

Salida:

```bash
Scripts encontrados:
- 01-numero-positivo-negativo.sh
- 02-numero-mayor-o-igual.sh
- 03-menu-opciones.sh
- 04-for-1-al-10.sh
- 05-contador-numeros.sh
- 06-bucle-condicional.sh
- 07-funcion-saludo.sh
- 08-funcion-suma.sh
- 09-manejo-errores.sh
- 10-listar-scripts.sh
```

Explicación:

| Elemento | Función |
| --- | --- |
| `#` | Comentarios (documentación dentro del script) |
| `for file in *.sh` | Recorre todos los scripts del directorio |
| `echo "- $file"` | Los imprime con formato tipo lista |
| `*.sh` | Patrón que selecciona solo archivos con extensión `.sh` |