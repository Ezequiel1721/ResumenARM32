# Resumen de Ensamblador
ARM es una arquitectura RISC (Reduced Instruction Set Computer = Ordenador con Conjunto Reducido de Instrucciones) de 32 bits. Se trata de una arquitectura licenciable, quiere decir que la empresa desarrolladora ARM Holdings diseña la arquitectura, pero son otras compañías las que fabrican y venden los chips, llevándose ARM Holdings un pequeño porcentaje por la licencia.

### Registros

#### Registros Generales
Su función es el almacenamiento temporal de datos.

#### Registros Especiales
##### - SP
Puntero de Pila. Sirve como puntero para almacenar variables locales y registros en llamadas a funciones.
##### - LR
Registro de Enlace. Almacena la dirección de retorno cuando una instrucción BL ó BLX ejecuta una llamada a una rutina.
##### - PC
Contador de Programa. Es un registro que indica la posición donde está el procesador en su secuencia de instrucciones.
