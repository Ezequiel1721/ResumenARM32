# Resumen de Ensamblador
ARM es una arquitectura RISC (Reduced Instruction Set Computer = Ordenador con Conjunto Reducido de Instrucciones) de 32 bits. Se trata de una arquitectura licenciable, quiere decir que la empresa desarrolladora ARM Holdings diseña la arquitectura, pero son otras compañías las que fabrican y venden los chips, llevándose ARM Holdings un pequeño porcentaje por la licencia.

### Registros
![](imagen/registros.png)

#### Registros Generales
Su función es el almacenamiento temporal de datos.

#### Registros Especiales
- **SP** - Puntero de Pila. Sirve como puntero para almacenar variables locales y registros en llamadas a funciones.
- **LR** - Registro de Enlace. Almacena la dirección de retorno cuando una instrucción BL ó BLX ejecuta una llamada a una rutina.
- **PC** - Contador de Programa. Es un registro que indica la posición donde está el procesador en su secuencia de instrucciones.

#### Registros CPSR
Almacena las banderas condicionales y los bits de control. Los bits de control definen la habilitación de interrupciones normales (I), interrupciones rápidas (F), modo Thumb (T) y el modo de operación de la CPU. Existen hasta 8 modos de operación. Desde el *Modo Usuario* sólo podemos acceder a las banderas condicionaless, que contienen información sobre el estado de la última operación realizada por la ALU. Existen 4 banderas y son las siguientes:
- **N.** Se activa cuando el resultado es negativo.
- **Z.** Se activa cuando el resultado es cero o una comparación es cierta.
- **C.** Indica acarreo en las operaciones aritméticas.
- **V.** Desbordamiento aritmético.

### Esquema de almacenamiento
Cuando escribimos un dato en una posición de memoria, dependiendo de si es byte, half word o word,... se ubica en memoria según el esquema de la figura 1.2. La dirección de un dato es la de su byte menos significativo.

![](imagen/memoria.png)

## El lenguaje Ensamblador
El ensamblador es un lenguaje de bajo nivel que permite un control directo de la CPU y todos los elementos asociados. Cada línea de un programa ensamblador consta de una instrucción del procesador y la posición que ocupan los datos de esa instrucción.

El ensamblador se utiliza como apoyo a otros lenguajes de alto nivel para 3 tipos de situcaciones:
- Operaciones que se repitan un número elevado de veces.
- Cuando se requiera una gran velocidad de proceso.
- Para utilización y aprovechamiento de dispositivos y recursos del sistema.


